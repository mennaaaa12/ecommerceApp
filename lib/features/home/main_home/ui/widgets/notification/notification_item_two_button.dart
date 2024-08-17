import 'package:flutter/material.dart';
import 'notification_item_button.dart'; // Adjust import as needed

class NotificationButtonsExample extends StatefulWidget {
  const NotificationButtonsExample({super.key});

  @override

    State<NotificationButtonsExample> createState() => _NotificationButtonsExampleState();


}

class _NotificationButtonsExampleState
    extends State<NotificationButtonsExample> {
  bool _isFirstButtonSelected = false;
  bool _isSecondButtonSelected = false;

  void _handleFirstButtonTap() {
    setState(() {
      _isFirstButtonSelected = !_isFirstButtonSelected;
      _isSecondButtonSelected = false; // Ensure only one button is selected
    });
  }

  void _handleSecondButtonTap() {
    setState(() {
      _isSecondButtonSelected = !_isSecondButtonSelected;
      _isFirstButtonSelected = false; // Ensure only one button is selected
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NotificationItemButton(
          label: 'New',
          onTap: _handleFirstButtonTap,
          isSelected: _isFirstButtonSelected,
        ),
        NotificationItemButton(
          label: 'All',
          onTap: _handleSecondButtonTap,
          isSelected: _isSecondButtonSelected,
        ),
      ],
    );
  }
}
