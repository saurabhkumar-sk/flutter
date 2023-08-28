import 'package:flutter/material.dart';

class MenuDialog extends StatelessWidget {
  const MenuDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Dialog(
        child: Padding(
      padding:
          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "New group",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "New broadcast",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Linked Devices",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Starred message",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Payment",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Setting",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    ));
  }
}
