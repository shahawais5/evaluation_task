import 'package:flutter/material.dart';

class CustomTextFields extends StatelessWidget {
  final TextEditingController controller;
  final String labtext;
  final String hintText;
  Icon suffixIcon;
  bool ObsecureText;
  final TextInputType keyboardType;
  CustomTextFields(
      {required this.keyboardType,
        required this.suffixIcon,
        required this.ObsecureText,
      required this.hintText,
      required this.labtext,
      required this.controller});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        obscureText: ObsecureText,

        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            labelText: labtext,
            suffixIcon: suffixIcon,
            hintText: hintText),
      ),
    );
  }
}
