import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/products.dart';
import 'package:shop/utils/app_routes.dart';
import 'package:shop/views/product_detail.dart';
import 'package:shop/views/products_overview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Products(),
      child: MaterialApp(
        title: 'Minha Loja',
        theme: ThemeData(

          primarySwatch: Colors.purple,
          accentColor: Colors.pinkAccent,
          fontFamily: 'Lato'
        ),
        home: ProductOverViewScreen(),
        routes: {
          AppRoutes.PRODUCT_DETAIL : (ctx) => ProductDetail()

        },
      ),
    );
  }
}
