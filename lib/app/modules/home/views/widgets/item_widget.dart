import 'package:flutter/material.dart';

import '../../../../../_assets/data/models/catalog.dart';

class Item_widget extends StatelessWidget {
  const Item_widget({
    Key? key,
    required this.allData,
  }) : super(key: key);

  final TblCatalog allData;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shadowColor: Colors.black26,
      child: ListTile(
        onTap: () {},
        leading: Image.network(allData.image),
        title: Text(allData.name),
        subtitle: Text(allData.desc),
        trailing: Text(
          "Rp. ${allData.price.toString()}",
          textScaleFactor: 1.5,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
