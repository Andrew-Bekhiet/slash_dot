import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:slash_dot/slash_dot.dart';

class BrandPhoto extends StatelessWidget {
  static const double imageHeight = 25;
  final Brand brand;

  const BrandPhoto(this.brand, {super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);

    return SizedBox(
      width: BrandPhoto.imageHeight,
      height: BrandPhoto.imageHeight,
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: brand.brandLogoImagePath,
          memCacheHeight:
              (imageHeight * mediaQuery.devicePixelRatio * 4).round(),
          memCacheWidth:
              (imageHeight * mediaQuery.devicePixelRatio * 4).round(),
          useOldImageOnUrlChange: true,
          placeholder: (context, _) => const _PlaceholderImage(),
          errorWidget: (context, url, error) {
            LoggingService.instance.reportError(error, StackTrace.current);

            return const _PlaceholderImage();
          },
        ),
      ),
    );
  }
}

class _PlaceholderImage extends StatelessWidget {
  const _PlaceholderImage();

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black,
      child: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: const Icon(
          Icons.no_photography_outlined,
          size: BrandPhoto.imageHeight / 2,
          color: Colors.white,
        ),
      ),
    );
  }
}
