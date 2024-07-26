import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// [AppText] is a wrapper around [Text] widget that provides a default
/// [TextStyle] and [TextAlign] for the app.
class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    required AppTextStyle this.style,
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
    AppTextStyle? baseStyle,
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

/// [AppTextStyle] is a wrapper around [TextStyle] that provides a default
class AppTextStyle extends TextStyle {
  const AppTextStyle._({
    super.fontSize,
    super.letterSpacing,
    super.decoration,
    super.fontWeight,
    super.color,
    super.inherit,
    super.backgroundColor,
    super.wordSpacing,
    super.textBaseline,
    super.height,
    super.leadingDistribution,
    super.decorationColor,
    super.decorationStyle,
    super.decorationThickness,
    super.shadows,
  });

  /// Internal factory to create a [TextStyle] with [GoogleFonts.poppins]
  factory AppTextStyle._poppins({
    required double fontSize,
    double? letterSpacing,
    TextDecoration decoration = TextDecoration.none,
    FontWeight? fontWeight,
    Color? color,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    List<Shadow>? shadows,
    bool inherit = true,
    double? wordSpacing,
    Color? backgroundColor,
  }) =>
      GoogleFonts.poppins(
        textStyle: AppTextStyle._(
          fontSize: fontSize,
          letterSpacing: letterSpacing,
          decoration: decoration,
          fontWeight: fontWeight,
          color: color,
          inherit: inherit,
          backgroundColor: backgroundColor,
          wordSpacing: wordSpacing,
          textBaseline: textBaseline,
          height: height,
          leadingDistribution: leadingDistribution,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decorationThickness: decorationThickness,
          shadows: shadows,
        ),
      ) as AppTextStyle;

  factory AppTextStyle.headline({
    double fontSize = 25,
    double letterSpacing = -0.4,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.w600,
    Color? color,
  }) =>
      AppTextStyle._poppins(
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        decoration: decoration,
        fontWeight: fontWeight,
        color: color,
      );

  factory AppTextStyle.title1({
    double fontSize = 15,
    double? letterSpacing,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
  }) =>
      AppTextStyle._poppins(
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        decoration: decoration,
        fontWeight: fontWeight,
        color: color,
      );

  factory AppTextStyle.title2({
    double fontSize = 20,
    double letterSpacing = -0.4,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.w600,
    Color? color,
  }) =>
      AppTextStyle._poppins(
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        decoration: decoration,
        fontWeight: fontWeight,
        color: color,
      );

  factory AppTextStyle.title3({
    double fontSize = 16,
    double? letterSpacing,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.w600,
    Color? color,
  }) =>
      AppTextStyle._poppins(
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        decoration: decoration,
        fontWeight: fontWeight,
        color: color,
      );

  factory AppTextStyle.body1({
    double fontSize = 16,
    double? letterSpacing,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
  }) =>
      AppTextStyle._poppins(
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        decoration: decoration,
        fontWeight: fontWeight,
        color: color,
      );

  factory AppTextStyle.body2({
    double fontSize = 14,
    double letterSpacing = -0.4,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.w500,
    Color? color,
  }) =>
      AppTextStyle._poppins(
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        decoration: decoration,
        fontWeight: fontWeight,
        color: color,
      );

  factory AppTextStyle.paragraph1({
    double fontSize = 12,
    double? letterSpacing,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.w600,
    Color? color,
  }) =>
      AppTextStyle._poppins(
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        decoration: decoration,
        fontWeight: fontWeight,
        color: color,
      );

  factory AppTextStyle.paragraph2({
    double fontSize = 11,
    double? letterSpacing,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
  }) =>
      AppTextStyle._poppins(
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        decoration: decoration,
        fontWeight: fontWeight,
        color: color,
      );

  factory AppTextStyle.button({
    double fontSize = 10,
    double letterSpacing = -0.4,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.w500,
    Color? color,
  }) =>
      AppTextStyle._poppins(
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        decoration: decoration,
        fontWeight: fontWeight,
        color: color,
      );

  factory AppTextStyle.label1({
    double fontSize = 8,
    double? letterSpacing,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
  }) =>
      AppTextStyle._poppins(
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        decoration: decoration,
        fontWeight: fontWeight,
        color: color,
      );

  factory AppTextStyle.label2({
    double fontSize = 6,
    double? letterSpacing,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
  }) =>
      AppTextStyle._poppins(
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        decoration: decoration,
        fontWeight: fontWeight,
        color: color,
      );

  factory AppTextStyle.link({
    double fontSize = 8,
    double? letterSpacing,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
  }) =>
      AppTextStyle._poppins(
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        decoration: decoration,
        fontWeight: fontWeight,
        color: color,
      );
}
