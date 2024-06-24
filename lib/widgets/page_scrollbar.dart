import 'package:flutter/material.dart';

class PageScrollbar extends StatelessWidget {
  final Widget child;
  const PageScrollbar({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      thickness: 6,
      thumbColor: Colors.black.withOpacity(0.2),
      child: child,
    );
  }
}
