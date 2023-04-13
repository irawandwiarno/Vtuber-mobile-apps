import 'package:flutter/material.dart';
import 'package:vtuber/view/cart.dart';
import 'package:intl/intl.dart';

class ItemCard extends StatelessWidget {
  final String imageLink;
  final String title;
  final double price;

  const ItemCard({
    Key? key,
    required this.imageLink,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              // margin: EdgeInsets.all(7),
              child: Image.network(
                imageLink,
                height: 150,
                width: 150,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 0, left: 5),
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xFF4c53a5),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rp. ${price}",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4c53a5),
                  ),
                ),
                IconButton(
                  onPressed: (){
                  },
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Color(0xFF4c53a5),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
