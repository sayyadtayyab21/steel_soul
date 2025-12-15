import 'package:flutter/material.dart';

class UniversalDialog {
  static void show({
    required BuildContext context,
    required String title,
    required String message,
    required bool isSuccess,
    VoidCallback? onOkPressed,
    String okButtonText = 'OK',
  }) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent dismissing by tapping outside
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Row(
            children: [
              Icon(
                isSuccess ? Icons.check_circle : Icons.error,
                color: isSuccess ? Colors.green : Colors.red,
                size: 24,
              ),
              const SizedBox(width: 8),
              Text(title),
            ],
          ),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop(); // Close dialog using dialog's context
                onOkPressed?.call(); // Call custom action if provided
              },
              child: Text(okButtonText),
            ),
          ],
        );
      },
    );
  }

  // Convenience methods for common cases
  static void showSuccess({
    required BuildContext context,
    required String message,
    VoidCallback? onOkPressed,
    String okButtonText = 'OK',
  }) {
    show(
      context: context,
      title: 'Success',
      message: message,
      isSuccess: true,
      onOkPressed: onOkPressed,
      okButtonText: okButtonText,
    );
  }

  static void showError({
    required BuildContext context,
    required String message,
    VoidCallback? onOkPressed,
    String okButtonText = 'OK',
  }) {
    show(
      context: context,
      title: 'Error',
      message: message,
      isSuccess: false,
      onOkPressed: onOkPressed,
      okButtonText: okButtonText,
    );
  }
}
