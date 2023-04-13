import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtuber/data/item.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

class Cart extends StatefulWidget {
  final List<Item> itemInCart;

  const Cart({Key? key, required this.itemInCart}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {

  String converUang(double price) {
    var formatCurrency = new NumberFormat.simpleCurrency(locale: 'id_ID');
    String priceIDR = formatCurrency.format(price);
    return priceIDR;
  }

  @override
  Widget build(BuildContext context) {
    print('itemInCart length: ${widget.itemInCart.length}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      backgroundColor: Color(0xFFDBDBDB),
      body: ListView.builder(
        itemCount: widget.itemInCart.length,
        itemBuilder: (context, index) {
          final item = widget.itemInCart[index];
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                Container(
                  child: Image.network(
                    item.imageLink,
                    height: 150,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        converUang(item.price),
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 60,
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF5B5B5B)),
                        ),
                        child: Text("1"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


// class Cart extends StatelessWidget {
//   final List<Item> itemInCart;
//
//   const Cart({Key? key, required this.itemInCart}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Keranjang'),
//         backgroundColor: Colors.blue,
//       ),
//       body: SizedBox(
//         child: Container(
//           margin: EdgeInsets.symmetric(horizontal: 20),
//           child: Column(
//             children: [
//               Expanded(
//                 child: ListView.builder(
//                   itemBuilder: (context, index) {
//                     final listItemCart = itemInCart[index];
//                     return Container(
//                       child: Row(
//                         children: [
//                           Container(
//                             child: Image.network(
//                               listItemCart.imageLink,
//                               height: 150,
//                             ),
//                           ),
//                           Column(
//                             children: [
//                               Expanded(
//                                 child: Text(
//                                   listItemCart.name,
//                                   style: const TextStyle(
//                                     fontSize: 17,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black54,
//                                   ),
//                                 ),
//                               ),
//                               Expanded(
//                                   child: Text(
//                                 "Rp. ${listItemCart.price}",
//                                 style: const TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black12,
//                                 ),
//                               ))
//                             ],
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                   itemCount: itemInCart.length,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
