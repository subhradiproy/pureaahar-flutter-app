part of 'phone_text_field.dart';

class PhoneController extends ChangeNotifier {
  PhoneController({
    this.initialValue = const PhoneNumber(isoCode: IsoCode.IN, nsn: ''),
  })  : _value = initialValue,
        _mounted = true,
        _formattedNationalNumberController =
            TextEditingController(text: initialValue.formatNsn());

  /// Whether the control is mounted
  bool _mounted;
  bool get mounted => _mounted;

  final PhoneNumber initialValue;
  PhoneNumber _value;
  PhoneNumber get value => _value;

  set value(PhoneNumber phoneNumber) {
    _value = phoneNumber;
    final String formattedNsn = _value.formatNsn();
    if (_formattedNationalNumberController.text != formattedNsn) {
      changeNationalNumber(text: formattedNsn);
    } else {
      notifyListeners();
    }
  }

  /// text editing controller of the nsn ( where user types the phone number )
  late final TextEditingController _formattedNationalNumberController;

  void changeCountry(IsoCode isoCode) {
    _value = PhoneNumber.parse(_value.nsn, destinationCountry: isoCode);
    _changeFormattedNationalNumber(_value.formatNsn());
    notifyListeners();
  }

  void changeNationalNumber({String text = ''}) {
    String newFormattedText = text;

    // if starts with + then we parse the whole number
    final bool startsWithPlus =
        text.startsWith(RegExp('[${PhoneTextField.plus}]'));

    if (startsWithPlus) {
      final PhoneNumber? phoneNumber = _tryParseWithPlus(text);
      // if we could parse the phone number we can change the value inside
      // the national number field to remove the "+ country dial code"
      if (phoneNumber != null) {
        _value = phoneNumber;
        newFormattedText = _value.formatNsn();
      }
    } else {
      final PhoneNumber phoneNumber = PhoneNumber.parse(
        text,
        destinationCountry: _value.isoCode,
      );
      _value = phoneNumber;
      newFormattedText = phoneNumber.formatNsn();
    }
    _changeFormattedNationalNumber(newFormattedText);
    notifyListeners();
  }

  void _changeFormattedNationalNumber(String newFormattedText) {
    if (newFormattedText != _formattedNationalNumberController.text) {
      _formattedNationalNumberController.value = TextEditingValue(
        text: newFormattedText,
        selection: _computeSelection(
          _formattedNationalNumberController.text,
          newFormattedText,
        ),
      );
    }
  }

  /// When the cursor is at the end of the text we need to preserve that.
  /// Since there is formatting going on we need to explicitely do it.
  /// We don't want to do it in the middle because the user might have
  /// used arrow keys to move inside the text.
  TextSelection _computeSelection(String originalText, String newText) {
    final int currentSelectionOffset =
        _formattedNationalNumberController.selection.extentOffset;
    final bool isCursorAtEnd = currentSelectionOffset == originalText.length;
    int offset = currentSelectionOffset;

    if (isCursorAtEnd || currentSelectionOffset >= newText.length) {
      offset = newText.length;
    }
    return TextSelection.fromPosition(TextPosition(offset: offset));
  }

  PhoneNumber? _tryParseWithPlus(String text) {
    try {
      return PhoneNumber.parse(text);
      // parsing "+", a country code won't be found
    } on PhoneNumberException {
      return null;
    }
  }

  void selectNationalNumber() {
    _formattedNationalNumberController.selection = TextSelection(
      baseOffset: 0,
      extentOffset: _formattedNationalNumberController.value.text.length,
    );
    notifyListeners();
  }

  @override
  void notifyListeners() {
    if (_mounted) super.notifyListeners();
  }

  @override
  void dispose() {
    _mounted = false;
    _formattedNationalNumberController.dispose();
    super.dispose();
  }
}
