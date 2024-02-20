import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLoadingButton extends StatelessWidget {
  const CustomLoadingButton(
      {super.key,
      this.onTap,
      this.color,
      this.backGroundColor,
      this.width,
      this.widget});
  final void Function()? onTap;
  final Color? color;
  final Widget? widget;
  final Color? backGroundColor;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10.h),
        width: width,
        height: MediaQuery.of(context).size.width > 600
            ? MediaQuery.of(context).size.height * 0.175
            : MediaQuery.of(context).size.height * 0.065,
        decoration: BoxDecoration(
            color: backGroundColor ?? Colors.orange,
            borderRadius: BorderRadius.circular(20)),
        child: Center(child: widget),
      ),
    );
  }
}
