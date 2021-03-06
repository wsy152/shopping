import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/date/dummy_date.dart';
import 'package:shop/models/product.dart';
import 'package:shop/providers/products.dart';
import 'package:shop/wedgets/product_item.dart';

class ProductOverViewScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final List<Product> leadedProducts =Provider.of<Products>(context).items;
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: leadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(product: leadedProducts[i]),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
