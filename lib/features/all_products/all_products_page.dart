import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slash_dot/slash_dot.dart';

import './bloc/all_products_bloc.dart';
import './bloc/all_products_event.dart';
import './bloc/all_products_state.dart';

final Provider<AllProductsBloc> allProductsBlocProvider =
    Provider<AllProductsBloc>(
  (ref) => AllProductsBloc(
    productService: ref.read(productsServiceProvider),
  ),
);

class AllProductsPage extends ConsumerStatefulWidget {
  const AllProductsPage({super.key});

  @override
  ConsumerState<AllProductsPage> createState() => _AllProductsPageState();
}

class _AllProductsPageState extends ConsumerState<AllProductsPage> {
  late AllProductsBloc bloc;

  @override
  void initState() {
    super.initState();

    bloc = ref.read(allProductsBlocProvider);

    if (bloc.state is! AllProductsLoaded) {
      bloc.add(const AllProductsLoadMore());
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    bloc = ref.read(allProductsBlocProvider);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slash.'),
      ),
      body: StreamBuilder<AllProductsState>(
        stream: bloc.stream,
        builder: (context, snapshot) {
          if (snapshot.hasError) return _AllProductsError(snapshot.error!);

          if (!snapshot.hasData || snapshot.data is AllProductsLoading) {
            return const _AllProductsLoading();
          }

          final AllProductsState? data = snapshot.data;

          if (data is! AllProductsLoaded) {
            return const _AllProductsError(
              AllProductsError(error: 'Unknown state'),
            );
          }

          final List<Product> products = data.products;

          if (products.isEmpty) {
            return const _AllProductsEmpty();
          }

          return _AllProductsContent(products);
        },
      ),
    );
  }
}

class _AllProductsLoading extends StatelessWidget {
  const _AllProductsLoading();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _AllProductsEmpty extends StatelessWidget {
  const _AllProductsEmpty();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('No products to show'));
  }
}

class _AllProductsContent extends StatelessWidget {
  const _AllProductsContent(this.products);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final Product product = products[index];

          return ProductWidget(product: product);
        },
      ),
    );
  }
}

class _AllProductsError extends ConsumerWidget {
  final Object error;

  const _AllProductsError(this.error);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Object error = this.error;

    if (error is! AllProductsError) {
      return const Center(child: Text('Oops! Something went wrong'));
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Oops! Something went wrong'),
          if (kDebugMode) Text(error.message ?? ''),
          if (error.lastEvent != null)
            FilledButton.tonal(
              onPressed: () {
                ref.read(allProductsBlocProvider).add(error.lastEvent!);
              },
              child: const Text('Try again'),
            ),
        ],
      ),
    );
  }
}
