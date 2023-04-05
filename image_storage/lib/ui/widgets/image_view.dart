import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:image_storage/business/image_cubit/image_cubit.dart';
import 'package:image_storage/ui/utils/functions.dart';
import 'package:image_storage/ui/widgets/image_list.dart';

class ImageView extends StatelessWidget {
  const ImageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black54,
    );

    return BlocListener<ImageCubit, ImageState>(
      listener: (context, state) {
        if (state.message.isNotEmpty) {
          showSnackBarSuccess(context, state.message);
        } else if (state.error.isNotEmpty) {
          showSnackBarError(context, state.error);
        }
      },
      child: BlocBuilder<ImageCubit, ImageState>(
        builder: (context, state) {
          if (state is ImageStateLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is ImageStateLoaded) {
            return ImageList(images: state.images);
          }

          if (state is ImageStateInitial) {
            return const Center(
              child: Text(
                'Нет данных',
                style: textStyle,
              ),
            );
          }

          if (state is ImageStateError) {
            return Center(
              child: Text(
                'Ошибка при получении данных: ${state.error}',
                style: textStyle,
              ),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
