import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:slash_dot/slash_dot.dart';

enum BrandPhotoSize {
  small(25),
  large(80);

  final double value;

  const BrandPhotoSize(this.value);
}

class BrandPhoto extends StatelessWidget {
  final Brand brand;
  final BrandPhotoSize size;

  const BrandPhoto(this.brand, {this.size = BrandPhotoSize.small, super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);

    return SizedBox(
      width: size.value,
      height: size.value,
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: brand.brandLogoImagePath,
          memCacheHeight:
              (size.value * mediaQuery.devicePixelRatio * 4).round(),
          memCacheWidth: (size.value * mediaQuery.devicePixelRatio * 4).round(),
          useOldImageOnUrlChange: true,
          fadeInDuration: Duration.zero,
          placeholder: (context, _) => _PlaceholderImage(size),
          errorWidget: (context, url, error) {
            LoggingService.instance.reportError(error, StackTrace.current);

            return _PlaceholderImage(size);
          },
        ),
      ),
    );
  }
}

class _PlaceholderImage extends StatelessWidget {
  final BrandPhotoSize size;

  const _PlaceholderImage(this.size);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black,
      child: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: Icon(
          Icons.no_photography_outlined,
          size: size.value / 2,
          color: Colors.white,
        ),
      ),
    );
  }
}
