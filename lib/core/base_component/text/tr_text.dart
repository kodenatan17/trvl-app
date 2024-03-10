import 'package:Trvl/core/foundation/colors.dart';
import 'package:Trvl/core/foundation/typograph.dart';
import 'package:flutter/material.dart';

class TRText extends StatelessWidget {
  final String text;
  final TextStyle? typography;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final int? maxLines;
  final Color? color;

  const TRText.headingBold({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.headingBold;

  const TRText.headingSemiBold({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.headingSemiBold;

  const TRText.headingMedium({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.headingMedium;

  const TRText.headingRegular({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.headingRegular;

  const TRText.headingLight({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.headingLight;

  const TRText.mobileBodyXLBold({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.mobileBodyXLBold;

  const TRText.mobileBodyXLSemiBold({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.mobileBodyXLSemiBold;

  const TRText.mobileBodyXLMedium({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.mobileBodyXLMedium;

  const TRText.mobileBodyXLRegular({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.mobileBodyXLRegular;

  const TRText.mobileBodyXLLight({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.mobileBodyXLLight;

  const TRText.mobileBodyLBold({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.mobileBodyLBold;

  const TRText.mobileBodyLSemiBold({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.mobileBodyLSemiBold;

  const TRText.mobileBodyLMedium({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.mobileBodyLMedium;

  const TRText.mobileBodyLRegular({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.mobileBodyLRegular;

  const TRText.mobileBodyLLight({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.mobileBodyLLight;

  const TRText.mobileBodyMBold({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.mobileBodyMBold;

  const TRText.mobileBodyMSemiBold({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.mobileBodyMSemiBold;

  const TRText.mobileBodyMMedium({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.mobileBodyMMedium;

  const TRText.mobileBodyMRegular({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.mobileBodyMRegular;

  const TRText.mobileBodyMLight({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.mobileBodyMLight;

  const TRText.labelBold({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.labelBold;

  const TRText.labelSemiBold({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.labelSemiBold;

  const TRText.labelMedium({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.labelMedium;

  const TRText.labelRegular({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.labelRegular;

  const TRText.labelLight({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    this.color = AppColors.bgPrimaryTextColor
  }) : typography = Typograph.labelLight;

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: textOverflow ?? TextOverflow.visible,
      style: typography?.copyWith(color : color),
    );
  }
}
