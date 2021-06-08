import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';
import 'package:shop/utils/app_routes.dart';
import 'package:shop/views/product_detail.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      

      child: GridTile(
        child: GestureDetector(

          onTap: (){
            
            Navigator.of(context).pushNamed(
                AppRoutes.PRODUCT_DETAIL,
              arguments: product,
            );

          },
          child:  Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: Icon(Icons.favorite),
            color: Theme.of(context).accentColor,
            onPressed: (){},
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}
