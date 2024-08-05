import 'package:flutter/material.dart';

import '../utils/debouncer.dart';

/// UI component to enable searching for items
/// Also contains the debounce functionality to prevent firing multiple
/// search requests within a short period of time
class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
    this.debounceTime = const Duration(milliseconds: 350),
    this.readOnly = false,
    this.height = 45,
    this.initialValue,
    this.onChanged,
    this.hintTextLeadingPadding = 10,
    this.hintText = 'What do you want to eat ?',
    this.minValidQueryLength = 3,
    this.enabledVoiceTyping = false,
    this.textAlign = TextAlign.start,
    this.contentPadding,
    this.onTap,
  });

  final Duration debounceTime;
  final bool readOnly;
  final double height;
  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final double hintTextLeadingPadding;
  final String hintText;
  final int minValidQueryLength;
  final bool enabledVoiceTyping;
  final TextAlign textAlign;
  final EdgeInsets? contentPadding;
  final VoidCallback? onTap;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  Debouncer? _debouncer;
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController(text: widget.initialValue);
    super.initState();
  }

  @override
  void dispose() {
    _debouncer?.dispose();
    _textEditingController.dispose();
    super.dispose();
  }

  /// Run during onChanged callback of the text field
  void _onChanged(String value) {
    if (value.length < widget.minValidQueryLength) return;
    if (widget.onChanged == null) return;
    _debouncer ??= Debouncer();
    _debouncer?.run(widget.debounceTime, () => widget.onChanged!(value));
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return TextField(
      readOnly: widget.readOnly,
      onChanged: _onChanged,
      onTap: widget.onTap,
      controller: _textEditingController,
      textAlign: widget.textAlign,
      decoration: InputDecoration(
        hintText: widget.hintText,
        contentPadding: widget.contentPadding,
        constraints: BoxConstraints(maxHeight: widget.height),
        filled: true,
        hintStyle: const TextStyle(fontSize: 14),
        prefixIcon: const Icon(Icons.search),
        suffixIcon: widget.enabledVoiceTyping
            ? Icon(Icons.mic, color: themeData.iconTheme.color)
            : null,
        suffixIconConstraints: themeData.visualDensity.effectiveConstraints(
          BoxConstraints(
            minWidth: kMinInteractiveDimension + widget.hintTextLeadingPadding,
            minHeight: kMinInteractiveDimension,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFFE3E3E3)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFFE3E3E3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFFE3E3E3)),
        ),
        disabledBorder: InputBorder.none,
      ),
    );
  }
}
