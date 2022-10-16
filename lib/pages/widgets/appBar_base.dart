import 'package:flutter/material.dart';

class AppBarBase extends StatelessWidget implements PreferredSizeWidget {
  final Widget? action;
  final Widget? leading;
  const AppBarBase({Key? key, this.action, this.leading}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: leading,
      actions: [
        action ?? Container(),
      ],
    );
  }
}
