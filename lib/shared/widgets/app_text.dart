import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// [AppText] is a wrapper around [Text] widget that provides a default
/// [TextStyle] and [TextAlign] for the app.
class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    this.style,
    this.scalable = true,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.configKey,
    this.selectionColor,
    super.key,
  }) : inlineSpans = null;

  /// Creates a [Text] widget with a [TextSpan] that can have different styles
  /// for different parts of the text.
  const AppText.rich(
    this.inlineSpans, {
    TextStyle? baseStyle,
    this.scalable = true,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.selectionColor,
    this.configKey,
    super.key,
  })  : text = '',
        style = baseStyle;

  /// [text] parameter of the underlying [Text] widget
  final String text;

  /// [textAlign] of the underlying [Text] widget
  final TextAlign? textAlign;

  /// [overflow] of the underlying [Text] widget
  /// The default value is [TextOverflow.ellipsis] if [maxLines] is set,
  final TextOverflow? overflow;

  /// [selectionColor] of the underlying [Text] widget
  final Color? selectionColor;

  /// [maxLines] of the underlying [Text] widget
  /// Defaults to null
  final int? maxLines;

  /// Defaults to true
  final bool scalable;

  /// [configKey] of the underlying [Text] widget
  final String? configKey;

  /// [TextStyle] to be used for the text
  final TextStyle? style;

  /// List of [InlineSpan]s that represent the parts of the text with
  /// different styles. If [inlineSpans] is null a simple [Text] widget is
  /// returned.
  final List<InlineSpan>? inlineSpans;

  @override
  Widget build(BuildContext context) {
    if (inlineSpans != null) {
      return Text.rich(
        TextSpan(children: inlineSpans),
        textAlign: textAlign,
        selectionColor: selectionColor,
        textScaler: scalable ? null : MediaQuery.textScalerOf(context),
        style: style,
        overflow: _predictOverflow,
        maxLines: maxLines,
      );
    }
    return Text(
      text,
      selectionColor: selectionColor,
      style: style,
      textScaler: scalable ? null : MediaQuery.textScalerOf(context),
      textAlign: textAlign,
      overflow: _predictOverflow,
      maxLines: maxLines,
    );
  }

  /// If [maxLines] is set, [TextOverflow.ellipsis] is returned, otherwise
  /// custom [overflow] is returned.
  TextOverflow? get _predictOverflow =>
      overflow ?? (maxLines != null ? TextOverflow.ellipsis : null);
}

/// [AppTextStyle] is an extension on [TextStyle]
extension AppTextStyle on TextStyle {
  static TextStyle get _base => GoogleFonts.poppins();

  static TextStyle get headline {
    return _base.copyWith(
      fontSize: 32,
      letterSpacing: -0.4,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle get title1 =>
      _base.copyWith(fontSize: 24, fontWeight: FontWeight.w400);

  static TextStyle get title2 {
    return _base.copyWith(
      fontSize: 18,
      letterSpacing: -0.4,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle get title3 =>
      _base.copyWith(fontSize: 16, fontWeight: FontWeight.w600);

  static TextStyle get body1 =>
      _base.copyWith(fontSize: 18, fontWeight: FontWeight.w400);

  static TextStyle get body2 {
    return _base.copyWith(
      fontSize: 16,
      letterSpacing: -0.4,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle get paragraph1 =>
      _base.copyWith(fontSize: 14, fontWeight: FontWeight.w600);

  static TextStyle get paragraph2 =>
      _base.copyWith(fontSize: 12, fontWeight: FontWeight.w400);

  static TextStyle get button {
    return _base.copyWith(
      fontSize: 16,
      letterSpacing: -0.4,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle get label1 =>
      _base.copyWith(fontSize: 18, fontWeight: FontWeight.w400);

  static TextStyle get label2 =>
      _base.copyWith(fontSize: 16, fontWeight: FontWeight.w400);

  static TextStyle get link =>
      _base.copyWith(fontSize: 12, fontWeight: FontWeight.w400);
}
