import 'package:flutter/material.dart';
import 'package:order/core/widgets/reusable_text.dart';

import '../utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.onTap,
      required this.text,
      this.color,
      this.backGroundColor,
      this.width,
      this.widget,
      this.height,
      this.textSize,
      this.radis});
  final void Function()? onTap;
  final String text;
  final Color? color;
  final Widget? widget;
  final Color? backGroundColor;
  final double? width;
  final double? height;
  final double? textSize;
  final double? radis;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: height ?? 10),
        width: width,
        decoration: BoxDecoration(
            color: backGroundColor ?? Colors.orange,
            borderRadius: BorderRadius.circular(radis ?? 20)),
        child: Center(
          child: widget ??
              ReusableText(
                  text: text,
                  style: appStyle(context, textSize ?? 16,
                      color ?? Colors.white, FontWeight.w600)),
        ),
      ),
    );
  }
}
