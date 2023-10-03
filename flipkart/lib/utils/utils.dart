import 'package:flutter/material.dart';
import 'package:my_first_app/main.dart';

//Notification listener
class Utils {
  static bool scrollNotifier(Object? notification, VoidCallback callback) {
    if (notification is ScrollEndNotification) {
      final before = notification.metrics.extentBefore;
      final max = notification.metrics.maxScrollExtent;

      if (before == max) callback();
    }
    return false;
  }

  static void showSnack(String text) {
    messangerkey.currentState?.hideCurrentSnackBar();
    messangerkey.currentState?.showSnackBar(
      SnackBar(
        showCloseIcon: true,
        
        closeIconColor: Colors.amber,
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
          label: 'ok',
          onPressed: () {},
        ),
        content: Text(text),
      ),
    );
  }
}
