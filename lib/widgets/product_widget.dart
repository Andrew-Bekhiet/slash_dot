import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
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
    return Column(
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
                child: BrandPhoto(product.brand),
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
                'EGP ' + product.defaultVariation.price.toStringAsFixed(0),
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
    );
  }
}

class _ProductPhoto extends StatelessWidget {
  final Product product;

  const _ProductPhoto(this.product);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: CachedNetworkImage(
        imageUrl: product
                .defaultVariation.productVariantImages.firstOrNull?.imagePath ??
            '',
        // specifying memCacheHeight and memCacheWidth improves performance
        memCacheHeight:
            (ProductWidget.imageHeight * mediaQuery.devicePixelRatio * 4)
                .round(),
        memCacheWidth:
            (ProductWidget.imageHeight * mediaQuery.devicePixelRatio * 4)
                .round(),
        imageBuilder: (context, imageProvider) => Stack(
          fit: StackFit.expand,
          children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Image(
                fit: BoxFit.fill,
                image: imageProvider,
                gaplessPlayback: true,
              ),
            ),
            Image(
              image: imageProvider,
              gaplessPlayback: true,
            ),
          ],
        ),
        useOldImageOnUrlChange: true,
        placeholder: (context, _) => ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: const ColoredBox(color: Colors.white),
        ),
        errorWidget: (context, url, error) {
          LoggingService.instance.reportError(error, StackTrace.current);

          return const _PlaceholderImage();
        },
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
