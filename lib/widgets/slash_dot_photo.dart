import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:slash_dot/services/logging_service.dart';

class SlashDotPhoto extends StatelessWidget {
  final String photoUrl;
  final double? height;
  final double? width;
  final Widget? placeholder;

  const SlashDotPhoto(
    this.photoUrl, {
    this.height,
    this.width,
    this.placeholder,
    super.key,
  }) : assert(
          height != null || width != null,
          'Either height or width must be provided',
        );

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);

    return CachedNetworkImage(
      imageUrl: photoUrl,
      // specifying memCacheHeight and memCacheWidth improves performance
      memCacheHeight:
          ((height ?? width)! * mediaQuery.devicePixelRatio * 4).round(),
      memCacheWidth:
          ((width ?? height)! * mediaQuery.devicePixelRatio * 4).round(),
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

        return placeholder ?? _PlaceholderImage(height ?? width!);
      },
    );
  }
}

class _PlaceholderImage extends StatelessWidget {
  final double size;

  const _PlaceholderImage(this.size);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        Icons.no_photography_outlined,
        size: size,
      ),
    );
  }
}
