import 'package:flutter/material.dart';
import 'package:learning_management/utils/colors.dart';

class Textfield1 extends StatelessWidget {
  const Textfield1(
      {super.key,
      this.hinttext,
      this.suffixicon,
      this.validation,
      this.obscuretext,
      this.onchanged});

  final hinttext;
  final IconData? suffixicon;
  final validation;
  final obscuretext;
  final onchanged;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(right: 20, top: 5, left: 20),
      child: TextFormField(
        onChanged: onchanged,
        validator: validation,
        obscureText: obscuretext ?? false,
        decoration: InputDecoration(
          label: hinttext,
          suffixIcon: Icon(suffixicon),
          filled: true,
          fillColor: Colors.white,
          labelStyle: const TextStyle(color:AppColor.grey,),
          //enable-->
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide:  BorderSide(color: AppColor.primary, width: 1),
          ),
          //focus-->
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColor.primary,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          //focus-->
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color:AppColor.red,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
