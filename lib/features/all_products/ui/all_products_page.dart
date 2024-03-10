import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slash_dot/slash_dot.dart';

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
      body: BlocBuilder<AllProductsBloc, AllProductsState>(
        bloc: bloc,
        builder: (context, state) {
          switch (state) {
            case AllProductsError():
              return _AllProductsError(
                state,
                onRetry: () => _onRetry(state.lastEvent!),
              );

            case AllProductsInitial():
              return const _AllProductsLoading();

            case AllProductsLoading(previousProducts: null):
              return const _AllProductsLoading();

            case AllProductsLoading(
                      previousProducts: final List<Product> products
                    ) ||
                    AllProductsLoaded(products: final List<Product> products)
                when products.isEmpty:
              return const _AllProductsEmpty();

            case AllProductsLoading(
                    previousProducts: final List<Product> products
                  ) ||
                  AllProductsLoaded(products: final List<Product> products):
              return Column(
                children: [
                  Expanded(
                    child: AllProductsList(
                      products,
                      onLoadMoreRequested: _onLoadMore,
                    ),
                  ),
                  if (state is AllProductsLoading)
                    const Center(child: CircularProgressIndicator()),
                ],
              );
          }
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
