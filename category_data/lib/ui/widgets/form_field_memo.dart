import 'package:flutter/material.dart';

class FormFieldMemo extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool autofocus;
  final bool isAutovalidate;
  final String? Function(String? value)? validator;
  const FormFieldMemo(
      {Key? key,
      required this.controller,
      required this.labelText,
      required this.autofocus,
      required this.isAutovalidate,
      required this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autofocus: autofocus,
      autovalidateMode: isAutovalidate
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
      keyboardType: TextInputType.multiline,
      minLines: 2,
      maxLines: null,
      validator: validator,
    );
  }
}
