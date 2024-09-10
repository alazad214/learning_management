import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import '../../widgets/text2.dart';

class Apprichtext extends StatelessWidget {
  final text;
  final text2;
  final ontap;
  final padding;
  const Apprichtext(
      {super.key, this.text, this.text2, this.ontap, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.only(top: 20),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text2(
            text: text ?? "Don't have an account?  ",
          ),
          InkWell(
            onTap: ontap,
            child: Text2(
              text: text2 ?? "Register",
              fontweight: FontWeight.bold,
              color: AppColor.primary,
            ),
          ),
        ],
      ),
    );
  }
}
