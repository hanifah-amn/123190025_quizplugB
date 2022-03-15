import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String username;

  const HomePage({Key? key, required this.username}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage('assets/images/1.png');

    Image image = Image(image: assetImage, height: 100, width: 100);
    return Container(
      child: image,
    );
  }
}