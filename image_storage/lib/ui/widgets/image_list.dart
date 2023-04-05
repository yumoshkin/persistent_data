import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_storage/data/models/img.dart' as img;

class ImageList extends StatelessWidget {
  const ImageList({Key? key, required this.images}) : super(key: key);
  final List<img.Img> images;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(
        height: 1,
        thickness: 1,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) => SizedBox(
        height: 170,
        child: Image.file(
          File(images[index].path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
