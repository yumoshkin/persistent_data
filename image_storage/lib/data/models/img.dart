import 'package:freezed_annotation/freezed_annotation.dart';

part 'img.freezed.dart';
part 'img.g.dart';

@freezed
class Img with _$Img {
  const factory Img({
    int? id,
    required String url,
    required String path,
  }) = _Img;

  factory Img.fromJson(Map<String, dynamic> json) => _$ImgFromJson(json);
}
