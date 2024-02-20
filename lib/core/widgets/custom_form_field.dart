import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      this.hintText,
      required this.keyboardType,
      this.validator,
      this.suffixIcon,
      this.obscureText,
      this.color,
      this.hintColor,
      this.onChanged,
      this.onEditingComplete,
      this.textColor,
      this.cursorColor,
      this.label,
      this.width,
      this.maxLines,
      this.prefixIcon});
  final TextEditingController controller;
  final String? hintText;
  final String? label;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? obscureText;
  final Color? color;
  final Color? hintColor;
  final Color? textColor;
  final Color? cursorColor;
  final Function(String str)? onChanged;
  final Function()? onEditingComplete;
  final double? width;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //padding: EdgeInsets.symmetric(horizontal: 15),
      width: width,
      child: TextFormField(
        onEditingComplete: onEditingComplete,
        onChanged: onChanged,
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        cursorColor: cursorColor ?? Colors.black,
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: prefixIcon,
          filled: true,
          fillColor: color ?? Colors.grey,
          //labelText: label,
          hintText: hintText,
          suffixIcon: suffixIcon,
          //hintStyle: appStyle(context, 14, Colors.black, FontWeight.w500),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 1),
              borderRadius: BorderRadius.circular(10.h)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.green, width: 1),
              borderRadius: BorderRadius.circular(10.h)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 1),
              borderRadius: BorderRadius.circular(10.h)),
          disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black54, width: 1),
              borderRadius: BorderRadius.circular(10.h)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black54, width: 1),
              borderRadius: BorderRadius.circular(10.h)),
          border: InputBorder.none,
        ),
        controller: controller,
        cursorHeight: 25,
        style:
            appStyle(context, 18, textColor ?? Colors.black, FontWeight.w500),
        validator: validator,
      ),
    );
  }
}

class CustomTextField2 extends StatelessWidget {
  const CustomTextField2(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.keyboardType,
      this.validator,
      this.suffixIcon,
      this.obscureText,
      this.color,
      this.hintColor,
      this.prefixIcon,
      this.label,
      this.isDense,
      this.height,
      this.onTap,
      this.border});
  final TextEditingController controller;
  final String hintText;
  final void Function()? onTap;

  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final bool? obscureText;
  final Color? color;
  final Color? hintColor;
  final Widget? prefixIcon;
  final String? label;
  final bool? isDense;
  final bool? border;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TextFormField(
        onTap: onTap,
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          isDense: isDense,
          contentPadding: isDense! ? EdgeInsets.all(height?.w ?? 8) : null,
          prefixIcon: prefixIcon,
          filled: true,
          fillColor: color ?? Colors.grey,
          labelText: label,
          hintText: hintText,
          suffixIcon: suffixIcon,
          hintStyle:
              appStyle(context, 14, Colors.grey.shade600, FontWeight.w500),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 1),
              borderRadius: BorderRadius.circular(10.h)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.green, width: 1),
              borderRadius: BorderRadius.circular(10.h)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 1),
              borderRadius: BorderRadius.circular(10.h)),
          disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(10.h)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: border == true ? Colors.black : Colors.grey.shade300,
                  width: 1),
              borderRadius: BorderRadius.circular(10.h)),
          border: InputBorder.none,
        ),
        controller: controller,
        cursorHeight: 25,
        style: appStyle(context, 16, Colors.grey.shade900, FontWeight.w500),
        validator: validator,
      ),
    );
  }
}
