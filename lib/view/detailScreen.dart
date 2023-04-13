import 'package:flutter/material.dart';
import 'package:vtuber/data/idol.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'dart:io';

import 'package:vtuber/view/buttonLove.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.idol}) : super(key: key);

  final Idol idol;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1C22),
      body: SafeArea(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // FittedBox(
                  //   fit: BoxFit.contain, // atur properti fit
                  //   child: Image.asset(idol.imageFull),
                  // ),
                  Container(
                    height: 300,
                    padding: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(idol.imageFull),
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Text(
                      idol.nama,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: idol.color,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                    child: Text(
                      idol.jargon,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      idol.des,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  IdolVoteButton(idol: idol),
                  // Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 15),
                  //   child: Container(
                  //     height: 50,
                  //     width: double.infinity,
                  //     padding: EdgeInsets.symmetric(horizontal: 20),
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(40),
                  //       color: idol.color,
                  //     ),
                  //     child: Row(
                  //       children: [
                  //         Icon(
                  //           FontAwesomeIcons.heart,
                  //           color: Colors.white,
                  //           size: 16,
                  //         ),
                  //         Text("${idol.vote}", style: TextStyle(
                  //           fontSize: 16,
                  //           color: Colors.white,
                  //         ),)
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            )),
      ),
    );
  }
}
