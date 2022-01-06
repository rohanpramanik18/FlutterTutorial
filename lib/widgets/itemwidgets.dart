import 'package:flutter/material.dart';
import 'package:trialapp/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: ListTile(
          leading: Image.network(item.image),
          title: Text(
            item.name,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text(item.desc),
          trailing: Text(
            "\$${item.price}",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
            ),
            textScaleFactor: 1.4,
          ),
        ),
      ),
    );
  }
}
