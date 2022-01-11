import 'package:flutter/material.dart';

class PageScrollbar extends StatelessWidget {
  final Widget child;
  const PageScrollbar({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      thickness: 6,
      thumbColor: Colors.black.withOpacity(0.2),
      child: child,
    );
  }
}
