import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

import 'country_prefix.dart';

part 'phone_text_controller.dart';

/// Phone TextField extending form field.
/// Only one of [initialValue] and [controller] can be specified.
/// If [controller] is specified the [initialValue] will be
/// the first value of the [PhoneController]
class PhoneTextField extends FormField<PhoneNumber> {
  PhoneTextField({
    super.key,
    this.controller,
    this.onChanged,
    this.focusNode,
    this.isCountrySelectionEnabled = true,
    bool? isCountryButtonPersistent,
    this.countryPrefixStyle = const CountryPrefixStyle(),

    // form field inputs
    super.validator,
    PhoneNumber? initialValue,
    super.onSaved,
    super.autovalidateMode = AutovalidateMode.onUserInteraction,
    super.restorationId,
    super.enabled = true,

    // textfield inputs
    this.decoration = const InputDecoration(),
    this.keyboardType = TextInputType.phone,
    this.textInputAction,
    this.style,
    this.strutStyle,
    this.textAlignVertical,
    this.autofocus = false,
    this.obscuringCharacter = '*',
    this.obscureText = false,
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.contextMenuBuilder,
    this.showCursor,
    this.onEditingComplete,
    this.onSubmitted,
    this.onAppPrivateCommand,
    this.onTapOutside,
    this.inputFormatters,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.selectionHeightStyle = ui.BoxHeightStyle.tight,
    this.selectionWidthStyle = ui.BoxWidthStyle.tight,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20),
    this.enableInteractiveSelection = true,
    this.selectionControls,
    this.mouseCursor,
    this.scrollPhysics,
    this.scrollController,
    this.enableIMEPersonalizedLearning = true,
  })  : assert(
          initialValue == null || controller == null,
          'One of initialValue or controller can be specified at a time',
        ),
        isCountryButtonPersistent = isCountryButtonPersistent ?? true,
        super(
          builder: (FormFieldState<PhoneNumber> state) =>
              (state as PhoneFormFieldState).builder(),
          initialValue: controller?.value ?? initialValue,
        );

  /// {@macro controller}
  final PhoneController? controller;

  /// callback called when the input value changes
  final ValueChanged<PhoneNumber>? onChanged;

  /// the focusNode of the national number
  final FocusNode? focusNode;

  /// whether the user can select a new country when pressing the country button
  final bool isCountrySelectionEnabled;

  /// This controls wether the country button is alway shown or is hidden by
  /// the label when the national number is empty. This controls
  /// whether the country button is shown as a prefix or prefixIcon inside
  /// the text field.
  final bool isCountryButtonPersistent;

  /// The style of the country selector button
  final CountryPrefixStyle countryPrefixStyle;

  // Textfield inputs
  final InputDecoration decoration;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlignVertical? textAlignVertical;
  final bool autofocus;
  final String obscuringCharacter;
  final bool obscureText;
  final bool autocorrect;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final bool enableSuggestions;
  final Widget Function(BuildContext, EditableTextState)? contextMenuBuilder;
  final bool? showCursor;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;
  final AppPrivateCommandCallback? onAppPrivateCommand;
  final void Function(PointerDownEvent)? onTapOutside;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final Color? cursorColor;
  final ui.BoxHeightStyle selectionHeightStyle;
  final ui.BoxWidthStyle selectionWidthStyle;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final bool enableInteractiveSelection;
  final TextSelectionControls? selectionControls;
  bool get selectionEnabled => enableInteractiveSelection;
  final MouseCursor? mouseCursor;
  final ScrollPhysics? scrollPhysics;
  final ScrollController? scrollController;
  final bool enableIMEPersonalizedLearning;
  final List<TextInputFormatter>? inputFormatters;

  /// accepted punctuation within a phone number
  static const String punctuation = r' ()\[\]\-\.\/\\';
  static const String plus = r'\+＋';

  /// Westhen and easthern arabic numerals
  static const String digits = '0-9０-９٠-٩۰-۹';

  @override
  PhoneFormFieldState createState() => PhoneFormFieldState();
}

class PhoneFormFieldState extends FormFieldState<PhoneNumber> {
  late final PhoneController _phoneController;
  late final FocusNode _focusNode;

  @override
  PhoneTextField get widget => super.widget as PhoneTextField;

  @override
  void initState() {
    super.initState();
    _phoneController = widget.controller ?? PhoneController();
    _phoneController.addListener(_onControllerValueChanged);
    _focusNode = widget.focusNode ?? FocusNode();
  }

  @override
  void dispose() {
    _phoneController.removeListener(_onControllerValueChanged);
    if (widget.focusNode == null) _focusNode.dispose();
    super.dispose();
  }

  // overriding method from FormFieldState
  @override
  void didChange(PhoneNumber? value) {
    if (value == null) return;
    super.didChange(value);
    if (_phoneController.value != value) _phoneController.value = value;
  }

  void _onControllerValueChanged() {
    /// when the controller changes because the user called
    /// controller.value = x we need to change the value of the form field
    if (_phoneController.value != value) didChange(_phoneController.value);
  }

  void _onTextFieldChanged(String value) {
    _phoneController.changeNationalNumber(text: value);
    didChange(_phoneController.value);
    widget.onChanged?.call(_phoneController.value);
  }

  // overriding method of form field, so when the user resets a form,
  // and subsequently every form field descendant, the controller is updated
  @override
  void reset() {
    _phoneController.value = _phoneController.initialValue;
    super.reset();
  }

  // Future<void> _selectCountry(BuildContext context) async {
  //   if (!widget.isCountrySelectionEnabled) {
  //     return;
  //   }
  //   final selected = await widget.countrySelectorNavigator.show(context);
  //   if (selected != null) {
  //     controller.changeCountry(selected);
  //     didChange(controller.value);
  //     widget.onChanged?.call(controller.value);
  //   }
  //   focusNode.requestFocus();
  // }

  Widget builder() {
    final TextAlign textAlignment = _computeTextAlign();
    final Map<_CountryButtonSlot, Widget?> countryButtonForEachSlot =
        _buildCountryButtonForEachSlot(textAlignment);
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            readOnly: true,
            canRequestFocus: false,
            ignorePointers: true,
            enabled: widget.enabled,
            decoration: widget.decoration.copyWith(
              prefix: countryButtonForEachSlot[_CountryButtonSlot.prefix],
              prefixIcon:
                  countryButtonForEachSlot[_CountryButtonSlot.prefixIcon],
              suffix: countryButtonForEachSlot[_CountryButtonSlot.suffix],
              suffixIcon:
                  countryButtonForEachSlot[_CountryButtonSlot.suffixIcon],
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          flex: 3,
          child: TextFormField(
            decoration: widget.decoration.copyWith(
              errorText: errorText,
              contentPadding: widget.countryPrefixStyle.padding,
            ),
            controller: _phoneController._formattedNationalNumberController,
            focusNode: _focusNode,
            enabled: widget.enabled,
            inputFormatters: widget.inputFormatters ??
                <TextInputFormatter>[
                  // hard limit of 10 + 1 characters for indian phone numbers
                  LengthLimitingTextInputFormatter(11),
                  FilteringTextInputFormatter.allow(
                    RegExp(
                      // ignore: lines_longer_than_80_chars
                      '[${PhoneTextField.plus}${PhoneTextField.digits}${PhoneTextField.punctuation}]',
                    ),
                  ),
                ],
            onChanged: _onTextFieldChanged,
            textAlign: _computeTextAlign(),
            autofillHints: const <String>[
              AutofillHints.telephoneNumberNational,
            ],
            keyboardType: widget.keyboardType,
            textInputAction: widget.textInputAction,
            style: widget.style,
            strutStyle: widget.strutStyle,
            textAlignVertical: widget.textAlignVertical,
            autofocus: widget.autofocus,
            obscuringCharacter: widget.obscuringCharacter,
            obscureText: widget.obscureText,
            autocorrect: widget.autocorrect,
            smartDashesType: widget.smartDashesType,
            smartQuotesType: widget.smartQuotesType,
            enableSuggestions: widget.enableSuggestions,
            showCursor: widget.showCursor,
            onEditingComplete: widget.onEditingComplete,
            onAppPrivateCommand: widget.onAppPrivateCommand,
            cursorWidth: widget.cursorWidth,
            cursorHeight: widget.cursorHeight,
            cursorRadius: widget.cursorRadius,
            cursorColor: widget.cursorColor,
            onTapOutside: widget.onTapOutside,
            selectionHeightStyle: widget.selectionHeightStyle,
            selectionWidthStyle: widget.selectionWidthStyle,
            keyboardAppearance: widget.keyboardAppearance,
            scrollPadding: widget.scrollPadding,
            enableInteractiveSelection: widget.enableInteractiveSelection,
            selectionControls: widget.selectionControls,
            mouseCursor: widget.mouseCursor,
            scrollController: widget.scrollController,
            scrollPhysics: widget.scrollPhysics,
            restorationId: widget.restorationId,
            enableIMEPersonalizedLearning: widget.enableIMEPersonalizedLearning,
          ),
        ),
      ],
    );
  }

  TextAlign _computeTextAlign() {
    final TextDirection directionality = Directionality.of(context);
    return directionality == TextDirection.ltr
        ? TextAlign.start
        : TextAlign.end;
  }

  /// returns where the country button is placed in the input
  Map<_CountryButtonSlot, Widget?> _buildCountryButtonForEachSlot(
    TextAlign textAlign,
  ) {
    final Widget countryButton = _buildCountryButton(context);
    if (textAlign == TextAlign.start) {
      if (widget.isCountryButtonPersistent) {
        return <_CountryButtonSlot, Widget?>{
          _CountryButtonSlot.prefixIcon: countryButton,
        };
      } else {
        return <_CountryButtonSlot, Widget?>{
          _CountryButtonSlot.prefix: countryButton,
        };
      }
    } else {
      if (widget.isCountryButtonPersistent) {
        return <_CountryButtonSlot, Widget?>{
          _CountryButtonSlot.suffixIcon: countryButton,
        };
      } else {
        return <_CountryButtonSlot, Widget?>{
          _CountryButtonSlot.suffix: countryButton,
        };
      }
    }
  }

  Widget _buildCountryButton(BuildContext context) {
    return ExcludeFocus(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: AnimatedBuilder(
          animation: _phoneController,
          builder: (BuildContext context, _) => CountryPrefix(
            key: const ValueKey<String>('country-code-chip'),
            padding: _computeCountryButtonPadding(context),
            showFlag: widget.countryPrefixStyle.showFlag,
            showDialCode: widget.countryPrefixStyle.showDialCode,
            textStyle: widget.countryPrefixStyle.textStyle,
            flagSize: widget.countryPrefixStyle.flagSize,
            enabled: widget.enabled,
          ),
        ),
      ),
    );
  }

  /// computes the padding inside the country button
  /// this is used to align the flag and dial code with the rest
  /// of the phone number.
  /// The padding must work for this matrix:
  /// - has label or not
  /// - is border underline or outline
  /// - is country button shown as a prefix or prefixIcon
  /// (isCountryChipPersistent)
  /// - text direction
  EdgeInsets _computeCountryButtonPadding(BuildContext context) {
    final EdgeInsets? userDefinedPadding = widget.countryPrefixStyle.padding;
    final bool isUnderline = widget.decoration.border is UnderlineInputBorder;
    final bool hasLabel =
        widget.decoration.label != null || widget.decoration.labelText != null;
    final bool isLtr = Directionality.of(context) == TextDirection.ltr;
    EdgeInsets padding = isLtr
        ? const EdgeInsets.fromLTRB(12, 16, 4, 16)
        : const EdgeInsets.fromLTRB(4, 16, 12, 16);
    if (userDefinedPadding != null) return userDefinedPadding;
    if (!widget.isCountryButtonPersistent) {
      padding = isLtr
          ? const EdgeInsets.only(right: 4, left: 12)
          : const EdgeInsets.only(left: 4, right: 12);
    } else if (isUnderline && hasLabel) {
      padding = isLtr
          ? const EdgeInsets.fromLTRB(12, 25, 4, 7)
          : const EdgeInsets.fromLTRB(4, 25, 12, 7);
    } else if (isUnderline && !hasLabel) {
      padding = isLtr
          ? const EdgeInsets.fromLTRB(12, 2, 4, 0)
          : const EdgeInsets.fromLTRB(4, 2, 12, 0);
    }
    return padding;
  }
}

enum _CountryButtonSlot {
  prefix,
  prefixIcon,
  suffix,
  suffixIcon,
}
