import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trialapp/models/catalog.dart';
import 'package:trialapp/widgets/drawer.dart';
import 'package:trialapp/widgets/itemwidgets.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(top: 4.0),
          child: Text("Rohan App"),
        ),
      ),
      body: GridView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              clipBehavior: Clip.antiAlias,
              elevation: 10,
              child: GridTile(
                child: Image.network(CatalogModel.items[index].image),
                header: Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    CatalogModel.items[index].name,
                    textAlign: TextAlign.center,
                  ),
                  color: Theme.of(context).primaryColor,
                  height: 30,
                ),
                footer: Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    "\$${CatalogModel.items[index].price}",
                    textAlign: TextAlign.center,
                  ),
                  color: Colors.red,
                  height: 30,
                ),
              ));
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 13),
      ),
      drawer: MyDrawer(),
    );
  }
}
