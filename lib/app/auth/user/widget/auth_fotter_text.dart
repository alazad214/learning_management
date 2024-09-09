import 'package:flutter/material.dart';
import '../../../../../utils/colors.dart';
import '../../../../../widgtets/text2.dart';

class AuthFotterText extends StatelessWidget {
  final text;
  final pagename;
  final ontap;
  final padding;
  const AuthFotterText(
      {super.key, this.text, this.pagename, this.ontap, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.only(top: 60),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Text2(
            text: text ?? "Don't have an accoutn?  ",
          ),
          InkWell(
            onTap: ontap,
            child: Text2(
              text: pagename ?? "Register",
              fontweight: FontWeight.bold,
              color: AppColor.primary,
            ),
          ),
        ],
      ),
    );
  }
}
