import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/apps/cart/providers/cart_provider.dart';
import 'package:practice/general/constants/urls.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartData = ref.watch(cartNotifyProvider);
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: cartData.length,
            itemBuilder: (ctx, i) {
              return Card(
                child: ListTile(
                  title: Text(cartData[i].products!.productName!),
                  subtitle: Text(cartData[i].products!.price!),
                  leading: Image.network(
                    Urls.baseUrlForImage +
                        cartData[i].products!.image.toString(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
