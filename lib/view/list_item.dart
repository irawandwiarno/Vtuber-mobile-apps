import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtuber/data/item.dart';
import 'package:intl/intl.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:vtuber/model/card.dart';
import 'package:vtuber/view/listview.dart';

class ListItem extends StatefulWidget {
  final List<Item> itemInCart;
  const ListItem({Key? key, required this.itemInCart}) : super(key: key);

  @override
  _ListItemState createState() => _ListItemState(itemInCart);
}

class _ListItemState extends State<ListItem> {
  final List<Item> itemInCart;
  final List<Item> itemData = itemList;

  _ListItemState(this.itemInCart);

  String converUang(double price) {
    var formatCurrency = new NumberFormat.simpleCurrency(locale: 'id_ID');
    String priceIDR = formatCurrency.format(price);
    return priceIDR;
  }

  @override
  Widget build(BuildContext context) {
    print('itemInCart length: ${widget.itemInCart.length}');
    return GridView.count(
      childAspectRatio: 0.68,
      crossAxisCount: 2,
      shrinkWrap: true,
      children: itemData
          .map(
            (item) => Container(
              child: Container(
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
                        margin: EdgeInsets.symmetric(vertical: 3),
                        child: Image.network(
                          item.imageLink,
                          height: 140,
                          width: 140,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 0, left: 5),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        item.name,
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
                            converUang(item.price),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4c53a5),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                widget.itemInCart.add(item);
                              });

                              Fluttertoast.showToast(
                                  msg: 'Item berhasil ditambahkan ke keranjang!',
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Color(0xFF4d99e7),
                              textColor: Colors.white,
                              fontSize: 16.0,
                              );
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
              ),
            ),
          )
          .toList(),
    );
  }
}

//
// ListView.builder(
// itemBuilder: (context, index) {
// final Item item = itemData[index];
// return InkWell(
// onTap: () {},
// child: ItemCard(imageLink: item.imageLink, title: item.name, price: item.price),
// );
// },
// itemCount: itemData.length,
// );
