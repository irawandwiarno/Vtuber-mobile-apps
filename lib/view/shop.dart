import 'package:flutter/material.dart';
import 'package:vtuber/data/item.dart';
import 'package:vtuber/view/cart.dart';
import 'package:vtuber/view/list_item.dart';
import 'package:vtuber/view/navbar.dart';
import 'package:vtuber/model/card.dart';
import 'package:intl/intl.dart';

class ItemScreen extends StatefulWidget {
  ItemScreen({Key? key}) : super(key: key);
  
  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  final List<Item> itemInCart = [];



  @override
  Widget build(BuildContext context) {
    print('itemInCart length in Shop: ${itemInCart.length}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Mercendise Shop'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Cart(itemInCart: itemInCart);
                }),
              );
            },
          )
        ],
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Color(0xFFDBDBDB),
      body: ListItem(itemInCart: itemInCart),
      bottomNavigationBar: Navbar(itemInCart: itemInCart),
    );
  }
}


// GridView.count(
// childAspectRatio: 0.68,
// crossAxisCount: 2,
// shrinkWrap: true,
// children: itemData
//     .map(
// (item) => Container(
// child: Container(
// padding: EdgeInsets.only(left: 15, right: 15, top: 10),
// margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(20),
// ),
// child: Column(
// children: [
// InkWell(
// onTap: () {},
// child: Container(
// // margin: EdgeInsets.all(7),
// child: Image.network(
// item.imageLink,
// height: 150,
// width: 150,
// ),
// ),
// ),
// Container(
// padding: EdgeInsets.only(bottom: 0, left: 5),
// alignment: Alignment.centerLeft,
// child: Text(
// item.name,
// style: const TextStyle(
// fontSize: 15,
// color: Color(0xFF4c53a5),
// fontWeight: FontWeight.bold,
// ),
// ),
// ),
// Padding(
// padding: EdgeInsets.symmetric(vertical: 2),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text(
// converUang(item.price),
// style: const TextStyle(
// fontSize: 14,
// fontWeight: FontWeight.bold,
// color: Color(0xFF4c53a5),
// ),
// ),
// IconButton(
// onPressed: () {
// setState(() {
// AddCard(item);
// });
// },
// icon: const Icon(
// Icons.shopping_cart_outlined,
// color: Color(0xFF4c53a5),
// ),
// )
// ],
// ),
// )
// ],
// ),
// ),
// ),
// )
//     .toList(),
// ),