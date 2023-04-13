import 'package:flutter/material.dart';
import 'package:vtuber/data/idol.dart';
import 'package:vtuber/view/detailScreen.dart';
import 'package:vtuber/view/navbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vtuber/data/item.dart';

class MainScreen extends StatelessWidget {
  final List<Item> itemInCart = [];

  @override
  Widget build(BuildContext context) {
    double paddingTop = MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF21232C),
        title: const Text(
          'Daftar Talent Hololive',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Poppins',
          ),
        ),
      ),
      backgroundColor: Color(0xFF1A1C22),
      body: SizedBox(
        child: Container(
          margin: EdgeInsets.only(top: paddingTop, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   child: const Text(
              //     'Daftar Talent Hololive',
              //     style: TextStyle(
              //       fontSize: 24,
              //       fontWeight: FontWeight.bold,
              //       fontFamily: 'Poppins',
              //     ),
              //   ),
              // ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final Idol idol = idolList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailScreen(idol: idol);
                        }));
                      },
                      child: ListItem(idol),
                    );
                  },
                  itemCount: idolList.length,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navbar(itemInCart: itemInCart),
    );
  }

  Widget ListItem(Idol idol) {
    return Container(
      margin: EdgeInsets.only(bottom: 35.0),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(idol.imageLink),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, Color(0xFF3B3B3B).withOpacity(0.8)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.bottomLeft, // Menetapkan teks ke bawah kiri
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    idol.nama,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 15),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.heart,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(width: 10),
                      Text(
                        idol.vote.toString(),
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Card(
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: <Widget>[
// Expanded(
// flex: 1,
// child: Padding(
// padding: const EdgeInsets.only(top: 20.0),
// child: Image.asset(idol.imageLink),
// ),
// ),
// Expanded(
// flex: 2,
// child: Padding(
// padding: const EdgeInsets.all(18.0),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisSize: MainAxisSize.min,
// children: <Widget>[
// Text(
// idol.nama,
// style: TextStyle(fontSize: 16.0),
// ),
// SizedBox(
// height: 10,
// ),
// Text(idol.gender),
// ],
// ),
// ),
// ),
// ],
// ),
// );
