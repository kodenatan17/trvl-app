import 'package:Trvl/core/base_component/text/tr_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../foundation/colors.dart';

class TRButton extends StatelessWidget {
  final String text;
  final Function()? onClick;
  final double height;
  final double? width;
  final ButtonType buttonType;
  final Color? textColor;
  final Widget? icon;
  final Color? borderColor;
  final Color? backgroundColor;
  final FocusNode? focusNode;
  final OutlinedBorder? shape;
  final double? fontSize;
  
  const TRButton.outlined({
    super.key,
    required this.text,
    this.onClick,
    this.height = 40,
    this.textColor,
    this.borderColor,
    this.backgroundColor,
    this.width,
    this.icon,
    this.focusNode,
    this.shape = const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
    this.fontSize
  }) : buttonType = ButtonType.outlined;

  const TRButton.filled({
    super.key,
    required this.text,
    this.onClick,
    this.height = 40,
    this.textColor,
    this.borderColor,
    this.backgroundColor,
    this.width,
    this.icon,
    this.focusNode,
    this.shape = const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
    this.fontSize
  }) : buttonType = ButtonType.filled;

  @override
  Widget build(BuildContext context) {
    if(buttonType == ButtonType.filled) {
      return filledButtonComponent();
    } else if(buttonType == ButtonType.outlined) {
      return outlinedButtonComponent();
    } else {
      return const SizedBox();
    }
  }

  /// This widget handle the [buttonType] Filled Button Constructor
  Widget filledButtonComponent() {
    return ElevatedButton(
        onPressed: onClick,
        focusNode: focusNode,
        style: ButtonStyle(
          backgroundColor: backgroundColor != null
              ? MaterialStateProperty.all(backgroundColor)
              : MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return backgroundColor ?? AppColors.bgPrimaryBlueColor;
              } else if (states.contains(MaterialState.disabled)) {
                return backgroundColor ?? AppColors.bgPrimaryBlueColor;
              }
              return backgroundColor ?? AppColors.bgPrimaryBlueColor;
            },
          ),
          shape: MaterialStateProperty.resolveWith((_) {
            return shape;
          })
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon ?? const SizedBox(),
            const SizedBox(width: 10),
            TRText.mobileBodyLSemiBold(
                text: text,
                color: textColor ?? AppColors.bgPrimaryWhiteColor,
            ),
          ],
        )
    );
  }

  Widget outlinedButtonComponent() {
    return OutlinedButton(
        onPressed: onClick,
        focusNode: focusNode,
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            width: 1,
            color: borderColor ?? AppColors.bgPrimaryBlueColor
          ),
          shape: shape
        ),
        child : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon ?? const SizedBox(),
            const SizedBox(width: 10),
            TRText.mobileBodyLSemiBold(
              text: text,
              color: textColor ?? AppColors.bgPrimaryBlueColor,
            ),
          ],
        )
    );
  }
}

enum ButtonType { outlined, filled }