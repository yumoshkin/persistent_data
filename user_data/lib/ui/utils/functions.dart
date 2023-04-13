import 'package:flutter/material.dart';

void showSnackBarSuccess(BuildContext context, String message,
    [int durationSec = 2]) {
  showSnackBar(context, message, false, durationSec);
}

void showSnackBarError(BuildContext context, String message,
    [int durationSec = 5]) {
  showSnackBar(context, message, true, durationSec);
}

void showSnackBar(BuildContext context, String message, bool error,
    [int durationSec = 2]) {
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  final snackBar = SnackBar(
    content: Text(
      message,
      style: const TextStyle(fontSize: 16),
    ),
    backgroundColor: error ? Colors.red : Colors.green,
    elevation: 4,
    duration: Duration(seconds: durationSec),
    showCloseIcon: durationSec > 2 ? true : false,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

String? validateRequiredField(String? value, String message) {
  if (value == null || value.isEmpty) {
    return message;
  } else {
    return null;
  }
}
