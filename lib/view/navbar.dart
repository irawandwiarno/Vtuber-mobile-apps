import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vtuber/view/cart.dart';
import 'package:vtuber/view/mainScreen.dart';
import 'package:vtuber/view/shop.dart';
import 'package:vtuber/data/item.dart';

class Navbar extends StatelessWidget {
  final List<Item> itemInCart;

  final List<IconData> icons = [
    Icons.home,
    Icons.shopping_bag_outlined,
  ];
  final List<String> titles = ['Home', 'Toko'];

  Navbar ({
    Key? key,
    required this.itemInCart
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: Color(0xFF21232C),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 6,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // for (int i = 0; i < icons.length; i++)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return MainScreen();
                        }));
                  },
                ),
                const Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return ItemScreen();
                      }));
                },
              ),
              const Text(
               "Toko",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
