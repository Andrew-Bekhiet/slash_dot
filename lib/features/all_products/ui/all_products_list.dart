import 'package:flutter/material.dart';
import 'package:slash_dot/slash_dot.dart';

class AllProductsList extends StatelessWidget {
  final List<Product> products;
  final VoidCallback onLoadMoreRequested;
  final bool isLoading;

  const AllProductsList(
    this.products, {
    required this.onLoadMoreRequested,
    this.isLoading = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: NotificationListener<ScrollNotification>(
        onNotification: _onScroll,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (MediaQuery.of(context).size.width / 200).floor(),
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemCount: products.length +
                (isLoading
                    ? products.length.isEven
                        ? 2
                        : 1
                    : 0),
            itemBuilder: (context, index) {
              if (index >= products.length) {
                return const Center(child: CircularProgressIndicator());
              }

              final Product product = products[index];

              return ProductWidget(product: product);
            },
          ),
        ),
      ),
    );
  }

  bool _onScroll(ScrollNotification notification) {
    final metrics = notification.metrics;
    if (metrics.pixels >= metrics.maxScrollExtent - 100) {
      onLoadMoreRequested();
    }

    return false;
  }
}
