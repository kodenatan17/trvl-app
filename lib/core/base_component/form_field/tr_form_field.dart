import 'package:Trvl/core/base_component/text/tr_text.dart';
import 'package:Trvl/core/foundation/colors.dart';
import 'package:Trvl/core/foundation/typograph.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TRFormField extends StatelessWidget {
  final TextFormType textFormType;
  final AutovalidateMode? autovalidateMode;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final double height;
  final String? hintText;
  final int minLines;
  final int maxLines;
  final bool obscureText;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final TextInputType textInputType;
  final String? initialValue;
  final bool readOnly;
  final FocusNode? focusNode;
  final String? errorText;
  final TextInputAction? textInputAction;
  final bool autofocus;
  final Function(String)? onFieldSubmitted;
  final TextStyle? errorStyle;
  final int? maxLength;
  final String? counterText;

  const TRFormField.phone({
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.height = 40,
    this.hintText,
    this.minLines = 1,
    this.maxLines = 1,
    this.onChanged,
    this.onTap,
    this.validator,
    this.autovalidateMode,
    this.obscureText = false,
    this.initialValue,
    this.readOnly = false,
    super.key,
    this.focusNode,
    this.errorText,
    this.textInputAction,
    this.autofocus = false,
    this.onFieldSubmitted,
    this.errorStyle,
    this.maxLength,
    this.counterText,
  })  : textFormType = TextFormType.phone,
        textInputType = TextInputType.number;

  const TRFormField.email({
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.height = 40,
    this.hintText,
    this.minLines = 1,
    this.maxLines = 1,
    this.onChanged,
    this.onTap,
    this.validator,
    this.autovalidateMode,
    this.obscureText = false,
    this.initialValue,
    this.readOnly = false,
    super.key,
    this.focusNode,
    this.errorText,
    this.textInputAction,
    this.autofocus = false,
    this.onFieldSubmitted,
    this.errorStyle,
    this.maxLength,
    this.counterText,
  })  : textInputType = TextInputType.emailAddress,
        textFormType = TextFormType.email;

  const TRFormField.password({
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.height = 40,
    this.hintText,
    this.minLines = 1,
    this.maxLines = 1,
    this.onChanged,
    this.onTap,
    this.validator,
    this.autovalidateMode,
    this.obscureText = true,
    this.initialValue,
    this.readOnly = false,
    super.key,
    this.focusNode,
    this.errorText,
    this.textInputAction,
    this.autofocus = false,
    this.onFieldSubmitted,
    this.errorStyle,
    this.maxLength,
    this.counterText,
  })  : textFormType = TextFormType.password,
        textInputType = TextInputType.visiblePassword;

  const TRFormField.text({
    this.textInputType = TextInputType.text,
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.height = 40,
    this.hintText,
    this.minLines = 1,
    this.maxLines = 1,
    this.onChanged,
    this.onTap,
    this.validator,
    this.obscureText = false,
    this.autovalidateMode,
    this.initialValue,
    this.readOnly = false,
    super.key,
    this.focusNode,
    this.errorText,
    this.textInputAction,
    this.autofocus = false,
    this.onFieldSubmitted,
    this.errorStyle,
    this.maxLength,
    this.counterText,
  }) : textFormType = TextFormType.text;

  const TRFormField.textArea({
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.height = 40,
    this.hintText,
    this.minLines = 3,
    this.maxLines = 3,
    this.onChanged,
    this.onTap,
    this.validator,
    this.obscureText = false,
    this.autovalidateMode,
    this.initialValue,
    this.readOnly = false,
    super.key,
    this.focusNode,
    this.errorText,
    this.textInputAction,
    this.autofocus = false,
    this.onFieldSubmitted,
    this.errorStyle,
    this.maxLength,
    this.counterText,
  })  : textInputType = TextInputType.multiline,
        textFormType = TextFormType.text;
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      autofocus: autofocus,
      focusNode: focusNode,
      onTap: onTap,
      style: Typograph.mobileBodyMSemiBold,
      maxLines: maxLines,
      minLines: minLines,
      autovalidateMode: autovalidateMode,
      controller: controller,
      validator: validator,
      keyboardType: textInputType,
      obscureText: obscureText,
      textAlignVertical: TextAlignVertical.center,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
          counterText: counterText,
          counterStyle: Typograph.labelRegular,
          errorText: errorText,
          errorMaxLines: 3,
          errorStyle: errorStyle,
          isDense: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
                color: AppColors.bgPrimaryLightBlueColor, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: AppColors.bgPrimaryRedColor, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: AppColors.bgPrimaryRedColor, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: AppColors.bgNeutralGrey60,
              width: 2.0,
            ),
          ),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 14, color: AppColors.bgSecondaryTextColor),
          prefixIcon: getPrefixIcon(),
          prefixIconConstraints: const BoxConstraints(
            minWidth: 0,
            minHeight: 0,
          ),
          suffixIconConstraints: const BoxConstraints(
            minWidth: 0,
            minHeight: 0,
          ),
          suffixIcon: suffixIcon != null
              ? Padding(
            padding: const EdgeInsets.only(right: 15),
            child: suffixIcon,
          )
              : null),
      inputFormatters: getInputFormatters(),
      initialValue: initialValue,
      readOnly: readOnly,
      maxLength: maxLength,
    );
  }

  List<TextInputFormatter>? getInputFormatters() {
    if (textFormType == TextFormType.phone) {
      return [
        FilteringTextInputFormatter.digitsOnly,
        FilteringTextInputFormatter.deny(RegExp(r'^0+')),
        FilteringTextInputFormatter.deny(RegExp(r'^62+')),
      ];
    }
    return null;
  }

  /// prefix cannot be aligned
  Widget? getPrefixIcon() {
    if (textFormType == TextFormType.phone) {
      return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: TRText.mobileBodyMSemiBold(
          text: '+62',
          color: AppColors.bgNeutralGrey60,
        ),
      );
    }
    return prefixIcon;
  }
}


enum TextFormType { password, email, text, phone }