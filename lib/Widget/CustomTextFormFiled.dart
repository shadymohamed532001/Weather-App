import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFiled extends StatelessWidget {
  CustomTextFiled(
      {Key? key,
      this.onChanged,
      this.style,
      this.hintStyle,
      this.suffixIcon,
        this.onTap,
      this.prefixIcon,
      this.controller,
      this.onSubmitted,
      this.hintText,})
      : super(key: key);

  void Function(String)? onChanged;
  void Function(String)? onSubmitted;
  TextEditingController? controller;
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? hintText;
  TextStyle? hintStyle;
  TextStyle? style;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: style,
      onTap:onTap ,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: hintStyle,
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white24)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white24))),
    );
  }
}
