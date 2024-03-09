import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
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

  void _onRetry(AllProductsEvent lastEvent) {
    bloc.add(lastEvent);
  }

  void _onLoadMore() {
    bloc.add(const AllProductsLoadMore());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slash.'),
      ),
      body: StreamBuilder<(AllProductsLoaded?, AllProductsState)>(
        stream: Rx.combineLatest2(
          bloc.stream.whereType<AllProductsLoaded?>().startWith(null),
          bloc.stream,
          (previousLoadedState, state) => (previousLoadedState, state),
        ),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return _AllProductsError(
              snapshot.error!,
              onRetry: snapshot.error is AllProductsError
                  ? () =>
                      _onRetry((snapshot.error! as AllProductsError).lastEvent!)
                  : null,
            );
          }

          if (!snapshot.hasData) {
            return const _AllProductsLoading();
          }

          final (previousLoadedState, state) = snapshot.data!;

          if (previousLoadedState == null) {
            return const _AllProductsLoading();
          }

          final List<Product> products = state is AllProductsLoaded
              ? state.products
              : previousLoadedState.products;

          if (products.isEmpty) {
            return const _AllProductsEmpty();
          }

          return Column(
            children: [
              Expanded(
                child: _AllProductsContent(
                  products,
                  onLoadMoreRequested: _onLoadMore,
                ),
              ),
              if (state is AllProductsLoading)
                const Center(child: CircularProgressIndicator()),
            ],
          );
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
  final List<Product> products;
  final VoidCallback onLoadMoreRequested;

  const _AllProductsContent(this.products, {required this.onLoadMoreRequested});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: NotificationListener<ScrollNotification>(
        onNotification: _onScroll,
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

class _AllProductsError extends StatelessWidget {
  final Object error;
  final VoidCallback? onRetry;

  const _AllProductsError(this.error, {this.onRetry});

  @override
  Widget build(BuildContext context) {
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
