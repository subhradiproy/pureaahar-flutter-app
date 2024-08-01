import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

import '../../../app/constants/assets.dart';

@immutable
class CountryPrefixStyle {
  const CountryPrefixStyle({
    this.textStyle,
    this.padding = const EdgeInsets.fromLTRB(12, 16, 4, 16),
    this.flagSize = 20,
    this.showFlag = true,
    this.showDialCode = true,
  });

  /// Text style of the country dial code inside the country button
  final TextStyle? textStyle;

  /// padding inside country button,
  /// this can be used to align the country button with the phone number
  /// and is mostly useful when using [isCountryButtonPersistent] as true.
  final EdgeInsets? padding;

  /// The radius of the flag in the country button
  final double flagSize;

  /// Wether to show the country flag in the country button
  final bool showFlag;

  /// Whether to show Dial Code in the country button
  /// setting this to false will hide, for example, (+91)
  final bool showDialCode;

  CountryPrefixStyle copyWith({
    TextStyle? textStyle,
    EdgeInsets? padding,
    double? flagSize,
    bool? showFlag,
    bool? showDialCode,
  }) {
    return CountryPrefixStyle(
      textStyle: textStyle ?? this.textStyle,
      padding: padding ?? this.padding,
      flagSize: flagSize ?? this.flagSize,
      showFlag: showFlag ?? this.showFlag,
      showDialCode: showDialCode ?? this.showDialCode,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CountryPrefixStyle &&
        other.textStyle == textStyle &&
        other.padding == padding &&
        other.flagSize == flagSize &&
        other.showFlag == showFlag &&
        other.showDialCode == showDialCode;
  }

  @override
  int get hashCode =>
      Object.hash(textStyle, padding, flagSize, showFlag, showDialCode);
}

/// A widget that displays a country flag and dial code.
class CountryPrefix extends StatelessWidget {
  const CountryPrefix({
    this.onTap,
    super.key,
    this.textStyle,
    this.padding = const EdgeInsets.fromLTRB(12, 16, 4, 16),
    this.flagSize = 20,
    this.showFlag = true,
    this.showDialCode = true,
    this.enabled = true,
    this.countryDialCode = '+91',
  });

  final VoidCallback? onTap;
  final String countryDialCode;
  final TextStyle? textStyle;
  final EdgeInsets padding;
  final double flagSize;
  final bool showFlag;
  final bool showDialCode;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if (showFlag) ...<Widget>[
              ExcludeSemantics(
                child: SvgPicture.asset(
                  SvgAsset.india.path,
                  height: flagSize,
                  width: flagSize,
                ),
              ),
              const SizedBox(width: 8),
            ],
            if (showDialCode)
              Text(
                countryDialCode,
                style: textStyle?.copyWith(
                  color: enabled ? null : Theme.of(context).disabledColor,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
