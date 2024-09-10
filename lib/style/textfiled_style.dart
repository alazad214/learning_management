import 'package:flutter/material.dart';
import 'package:learning_management/utils/colors.dart';

InputDecoration appInputDecoretion(label, icon) {
  return InputDecoration(
    label: Text(label ?? " "),
    suffixIcon: Icon(icon ?? Icons.email_outlined),
    filled: true,

    //enable-->
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.0),
      borderSide:
          BorderSide(color: AppColor.primary.withOpacity(0.7), width: 1),
    ),
    //focus-->
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColor.primary,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(14.0),
    ),
    //focus-->
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.red,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(14.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide:  BorderSide(
        color: AppColor.primary,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(14.0),
    ),
  );
}
