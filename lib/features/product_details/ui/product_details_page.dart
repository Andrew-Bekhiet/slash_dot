import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slash_dot/slash_dot.dart';

final Provider<ProductDetailsBloc> productDetailsBlocProvider =
    Provider<ProductDetailsBloc>(
  (ref) => ProductDetailsBloc(
    productsService: ref.read(productsServiceProvider),
  ),
);

class ProductDetailsPage extends ConsumerStatefulWidget {
  final Product product;

  const ProductDetailsPage({required this.product, super.key});

  @override
  ConsumerState<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends ConsumerState<ProductDetailsPage> {
  late ProductDetailsBloc bloc;

  @override
  void initState() {
    super.initState();

    bloc = ref.refresh(productDetailsBlocProvider);

    if (bloc.state is! ProductDetailsLoaded) {
      bloc.add(
        ProductDetailsRequested(
          product: widget.product,
          productId: widget.product.id.toString(),
        ),
      );
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    bloc = ref.read(productDetailsBlocProvider);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
          bloc: bloc,
          builder: (context, state) {
            switch (state) {
              case ProductDetailsLoading() || ProductDetailsInitial():
                return const Center(child: CircularProgressIndicator());
              case ProductDetailsError():
                return _ProductDetailsError(
                  state,
                  onRetry: () => bloc.add(
                    ProductDetailsRequested(
                      product: widget.product,
                      productId: widget.product.id.toString(),
                    ),
                  ),
                );
              case ProductDetailsLoaded(
                  product: final Product product,
                  selectedVariation: final ProductVariation selectedVariation,
                  availableProperties: final List<AvailablePropertyValues>
                      availableProperties,
                ):
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ProductVariationPhotos(
                        selectedVariation: selectedVariation,
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
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
                                BrandPhoto(
                                  product.brand!,
                                  size: BrandPhotoSize.large,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  product.brand!.brandName,
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          'EGP ' +
                              (selectedVariation.price ?? product.defaultPrice)
                                  .toStringAsFixed(0),
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      const SizedBox(height: 20),
                      for (final availableProp in availableProperties)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: AvailablePropertySelection(
                            selectedVariation: selectedVariation,
                            availableProperty: availableProp,
                            onChanged: (v) {
                              bloc.add(
                                ProductDetailsPropertyChanged(
                                  property: availableProp.property,
                                  value: v,
                                ),
                              );
                            },
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          child: ExpansionTile(
                            title: const Text('Description'),
                            children: [Text(product.description)],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}

class _ProductDetailsError extends StatelessWidget {
  final Object error;
  final VoidCallback? onRetry;

  const _ProductDetailsError(this.error, {this.onRetry});

  @override
  Widget build(BuildContext context) {
    final Object error = this.error;

    if (error is! ProductDetailsError) {
      return const Center(child: Text('Oops! Something went wrong'));
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Oops! Something went wrong'),
          if (kDebugMode) Text(error.message ?? ''),
          if (onRetry != null)
            FilledButton.tonal(
              onPressed: onRetry,
              child: const Text('Try again'),
            ),
        ],
      ),
    );
  }
}
