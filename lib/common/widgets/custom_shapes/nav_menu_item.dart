import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.text,
    required this.icon,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(icon: Icon(icon), label: text, tooltip: text);
  }
}
