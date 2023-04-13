import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtuber/data/item.dart';


class ListViewItem extends StatelessWidget {
  final Item items;

  const ListViewItem({required this.items,});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Image.network(items.imageLink),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    items.name,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    "${items.price}",
                    style: TextStyle(fontSize: 13.0),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
