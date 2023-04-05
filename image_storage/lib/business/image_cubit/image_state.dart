part of 'image_cubit.dart';

@freezed
class ImageState with _$ImageState {
  const factory ImageState.initial({
    @Default([]) List<Img> images,
    @Default('') String message,
    @Default('') String error,
  }) = ImageStateInitial;
  const factory ImageState.loading({
    @Default([]) List<Img> images,
    @Default('') String message,
    @Default('') String error,
  }) = ImageStateLoading;
  const factory ImageState.loaded({
    required List<Img> images,
    @Default('') String message,
    @Default('') String error,
  }) = ImageStateLoaded;
  const factory ImageState.error({
    @Default([]) List<Img> images,
    @Default('') String message,
    required String error,
  }) = ImageStateError;
}
