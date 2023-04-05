import 'package:flutter/material.dart';

import 'package:image_storage/ui/utils/functions.dart';
import 'package:image_storage/ui/widgets/form_field_text.dart';

class ImageForm extends StatelessWidget {
  const ImageForm({
    Key? key,
    required this.imageFormKey,
    required this.urlController,
    required this.submit,
  }) : super(key: key);
  final GlobalKey<FormState> imageFormKey;
  final TextEditingController urlController;
  final Function submit;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: imageFormKey,
      child: Row(
        children: [
          Expanded(
            child: FormFieldText(
              controller: urlController,
              labelText: 'Url',
              autofocus: false,
              isAutovalidate: true,
              validator: (value) =>
                  validateRequiredField(value, 'Url не должно быть пустым'),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => submit(context),
              child: const Text(
                'Скачать',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
