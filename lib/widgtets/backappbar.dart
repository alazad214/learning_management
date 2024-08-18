import 'package:flutter/material.dart';

class Backappbar extends StatelessWidget implements PreferredSizeWidget {
  const Backappbar({super.key, this.title});
  final title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:  Text(title, style: const TextStyle(fontSize: 16.0),),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
