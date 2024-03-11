import 'package:flutter/material.dart';
import 'package:slash_dot/slash_dot.dart';

class ProductWidget extends StatelessWidget {
  static const double imageHeight = 200;

  final Product product;

  const ProductWidget({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      onTap: () =>
          NavigationService.instance.navigateToProductDetails(context, product),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 5,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  _ProductPhoto(product),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: BrandPhoto(product.brand!),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  product.name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    'EGP ' + product.defaultPrice.toStringAsFixed(0),
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                const IconButton(
                  icon: Icon(Icons.favorite_outline),
                  // TODO: Implement favorite
                  onPressed: null,
                ),
                const IconButton(
                  icon: Icon(Icons.shopping_cart),
                  // TODO: Implement add to cart
                  onPressed: null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductPhoto extends StatelessWidget {
  final Product product;

  const _ProductPhoto(this.product);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: SlashDotPhoto(
        product.defaultVariation.productVariantImages.firstOrNull?.imagePath ??
            '',
        height: ProductWidget.imageHeight,
        placeholder: const _PlaceholderImage(),
      ),
    );
  }
}

class _PlaceholderImage extends StatelessWidget {
  const _PlaceholderImage();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.no_photography_outlined,
        size: ProductWidget.imageHeight,
      ),
    );
  }
}
