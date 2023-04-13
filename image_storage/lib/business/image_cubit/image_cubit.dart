import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:image_storage/data/models/img.dart';
import 'package:image_storage/data/services/image_service.dart';

part 'image_state.dart';
part 'image_cubit.freezed.dart';

@injectable
class ImageCubit extends Cubit<ImageState> {
  ImageCubit({required this.imageService}) : super(const ImageState.initial());
  final ImageService imageService;

  Future<void> init() async {
    emit(const ImageState.loading());
    await imageService.init();
    await loadImages();
  }

  Future<void> loadImages() async {
    try {
      emit(const ImageState.loading());
      final List<Img> images = await imageService.getAll();

      if (images.isNotEmpty) {
        emit(ImageState.loaded(images: images));
      } else {
        emit(const ImageState.initial());
      }
    } catch (e) {
      emit(ImageState.error(error: e.toString()));
    }
  }

  Future<void> addImage(Img image) async {
    try {
      emit(const ImageState.loading());
      final isAdded = await imageService.add(image);

      if (isAdded) {
        final List<Img> images = await imageService.getAll();
        emit(ImageState.loaded(images: images, message: 'Данные сохранены'));
      } else {
        emit(const ImageState.error(error: 'Неправильный url'));
      }
    } catch (e) {
      emit(ImageState.error(
          error: e.toString().replaceFirst('Exception: ', '')));
    }
  }

  Future<void> updateImage(Img image) async {
    try {
      emit(const ImageState.loading());
      await imageService.update(image);
      final List<Img> images = await imageService.getAll();
      emit(ImageState.loaded(images: images, message: 'Данные сохранены'));
    } catch (e) {
      emit(ImageState.error(
          error: e.toString().replaceFirst('Exception: ', '')));
    }
  }

  Future<void> deleteImage(int id) async {
    try {
      await imageService.delete(id);
      emit(const ImageState.loading());
      final List<Img> images = await imageService.getAll();
      emit(ImageState.loaded(images: images, message: 'Данные удалены'));
    } catch (e) {
      emit(ImageState.error(error: e.toString()));
    }
  }
}
