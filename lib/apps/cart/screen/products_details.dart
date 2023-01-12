import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductsDetails extends ConsumerWidget {
  final int productId;
  const ProductsDetails(this.productId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products Details"),
        elevation: 0,
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
