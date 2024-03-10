import 'package:flutter/material.dart';
import 'package:slash_dot/slash_dot.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;

  const ProductDetailsPage({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // ProductVariationPhotos(selectedVariation),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Text(
                    product.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BrandPhoto(product.brand, size: BrandPhotoSize.large),
                    const SizedBox(height: 10),
                    Text(
                      product.brand.brandName,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ],
            ),
            Text(
              'EGP ' + product.defaultVariation.price.toStringAsFixed(0),
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 20),
            // ProductColors(product.variations),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Description'),
              subtitle: Text(product.description),
            ),
          ],
        ),
      ),
    );
  }
}
