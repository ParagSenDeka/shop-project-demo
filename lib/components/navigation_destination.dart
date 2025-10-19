import "package:flutter/material.dart";

class NavigationDestinationExt extends StatelessWidget {
  final Icon icon;
  final String label;
  const NavigationDestinationExt({
    super.key,
    required this.icon,
    required this.label,
  });
  @override
  Widget build(BuildContext context) {
    return NavigationDestination(icon: icon, label: label);
  }
}
