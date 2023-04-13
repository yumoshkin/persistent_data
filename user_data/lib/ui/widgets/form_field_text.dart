import 'package:flutter/material.dart';

class FormFieldText extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? Function(String? value)? validator;
  const FormFieldText(
      {Key? key,
      required this.controller,
      required this.labelText,
      required this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 82,
      child: TextFormField(
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          labelText: labelText,
        ),
        keyboardType: TextInputType.text,
        validator: validator,
      ),
    );
  }
}
