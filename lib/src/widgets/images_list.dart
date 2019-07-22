import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImagesList extends StatelessWidget {
  final List<ImageModel> images;

  ImagesList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel images) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Colors.grey),
      ),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          Image.network(images.url),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(images.title),
          ),
        ],
      ),
    );
  }
}
