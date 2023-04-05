import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:image_storage/business/image_cubit/image_cubit.dart';
import 'package:image_storage/data/models/img.dart';
import 'package:image_storage/ui/widgets/image_form.dart';
import 'package:image_storage/ui/widgets/image_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<FormState> _imageFormKey = GlobalKey<FormState>();
  final _urlController = TextEditingController(
    text: 'https://zelenyjmir.ru/wp-content/uploads/2017/06/Lisa-122-1.jpg',
  );

  @override
  void dispose() {
    _urlController.dispose();
    super.dispose();
  }

  void submit(BuildContext context) async {
    if (!(_imageFormKey.currentState?.validate() ?? false)) {
      return;
    }

    await context.read<ImageCubit>().addImage(
          Img(
            url: _urlController.text,
            path: '',
          ),
        );

    FocusManager.instance.primaryFocus?.unfocus();
    _imageFormKey.currentState?.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Картинки'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Expanded(
              child: ImageView(),
            ),
            ImageForm(
              imageFormKey: _imageFormKey,
              urlController: _urlController,
              submit: submit,
            ),
          ],
        ),
      ),
    );
  }
}
