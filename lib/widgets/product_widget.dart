import 'package:flutter/material.dart';
import 'package:slash_dot/slash_dot.dart';

class ProductWidget extends StatelessWidget {
  final Product product;

  const ProductWidget({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name),
      subtitle: Text(product.description),
      trailing: Text(product.defaultVariation.price.toString()),
    );
  }
}
