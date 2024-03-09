import 'package:flutter/material.dart';

import './bloc/all_products_bloc.dart';

class AllProductsPage extends StatefulWidget {
  const AllProductsPage({super.key});

  @override
  State<AllProductsPage> createState() => _AllProductsPageState();
}

class _AllProductsPageState extends State<AllProductsPage> {
  final AllProductsBloc _bloc = AllProductsBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slash.'),
      ),
      body: const Center(
        child: Text('All Products'),
      ),
    );
  }
}
