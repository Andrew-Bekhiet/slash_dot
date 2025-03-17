import 'package:collection/collection.dart';
import 'package:flutter/material.dart' hide CarouselController;
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:slash_dot/slash_dot.dart';

class ProductVariationPhotos extends StatefulWidget {
  final ProductVariation selectedVariation;

  const ProductVariationPhotos({required this.selectedVariation, super.key});

  @override
  State<ProductVariationPhotos> createState() => _ProductVariationPhotosState();
}

class _ProductVariationPhotosState extends State<ProductVariationPhotos> {
  final CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
      options: CarouselOptions(
        controller: controller,
        floatingIndicator: false,
        indicatorMargin: 20,
        slideIndicator: _ImageSlideIndicator(
          images: widget.selectedVariation.productVariantImages,
          borderColor: Theme.of(context).colorScheme.primary,
          controller: controller,
        ),
        height: MediaQuery.of(context).size.height * 0.42,
        enlargeCenterPage: true,
        viewportFraction:
            MediaQuery.of(context).orientation == Orientation.portrait
                ? 0.6
                : 0.2,
      ),
      items: widget.selectedVariation.productVariantImages
          .mapIndexed(
            (index, image) => ConstrainedBox(
              constraints: BoxConstraints.loose(const Size(250, 250)),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: GestureDetector(
                  onTap: () => controller.animateToPage(
                    index,
                    curve: Curves.easeInOutSine,
                  ),
                  child: SlashDotPhoto(
                    image.imagePath,
                    height: 200,
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

class _ImageSlideIndicator implements SlideIndicator {
  final List<ProductVariantImage> images;
  final Color borderColor;
  final CarouselController controller;

  const _ImageSlideIndicator({
    required this.images,
    required this.borderColor,
    required this.controller,
  });

  @override
  Widget build(int currentPage, double pageDelta, int _itemCount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: images
          .mapIndexed(
            (index, image) => GestureDetector(
              onTap: () =>
                  controller.animateToPage(index, curve: Curves.easeInOutSine),
              child: AnimatedContainer(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: index == currentPage
                      ? Border.all(
                          color: borderColor,
                          width: 3,
                        )
                      : null,
                ),
                child: ConstrainedBox(
                  constraints: BoxConstraints.loose(const Size(50, 50)),
                  child: ClipOval(
                    child: SlashDotPhoto(
                      image.imagePath,
                      height: 50,
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
