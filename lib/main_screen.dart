import 'package:carousel_slider/carousel_slider.dart';
import 'package:quiz_lisa_meliana/home_page.dart';

import 'top_album.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spoti-Pay"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TopAlbum place = topAlbumList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage(username: place.albumName);
              }));
            },
            child: Card(
              child: Row(
                children: [
                  Image.network(place.albumurl[0],width: 64,),
                ],
              ),
            ),
          );
        },
        itemCount: topAlbumList.length,),
    );
  }
}