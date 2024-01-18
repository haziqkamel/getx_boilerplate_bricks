import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final ThemeData? themeData;
  final Color? backgroundColor;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const CustomAppBar({
    super.key,
    this.title = "",
    this.themeData,
    this.backgroundColor,
  });

  Widget themeInterceptor({required Widget child, ThemeData? themeData}) {
    if (themeData != null) {
      return Theme(data: themeData, child: child);
    }
    return child;
  }

  @override
  Widget build(BuildContext context) {
    return themeInterceptor(
      themeData: themeData,
      child: AppBar(
        title: Text(title),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: backgroundColor ?? Colors.transparent,
        actions: [],
      ),
    );
  }
}
