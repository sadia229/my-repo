import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/apps/cart/model/cart_model.dart';
import 'package:practice/apps/cart/providers/cart_provider.dart';
import 'package:practice/apps/cart/providers/products_provider.dart';
import 'package:practice/apps/cart/repository/cart_repository.dart';
import 'package:practice/general/constants/urls.dart';

class ProductsScreen extends ConsumerWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productData = ref.watch(productsNotifyProvider);
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: productData.length,
            itemBuilder: (ctx, i) {
              return InkWell(
                onTap: () async {
                  // Navigator.pushNamed(context, '/details', arguments: {
                  //   'productId': productData[i].id,
                  // });
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Card(
                    child: ListTile(
                      title: Text(productData[i].productName!),
                      subtitle: Text(productData[i].price!),
                      leading: Image.network(
                        Urls.baseUrlForImage + productData[i].image.toString(),
                      ),
                      trailing: IconButton(
                        onPressed: () async {
                          // var payLoad = {
                          //   'product_id': productData[i].id,
                          //   'product_quantity': productData[i].quantity,
                          //   'product_price': productData[i].price,
                          //   'product_total_price': productData[i].totalPrice,
                          //   'color_code': "#141010",
                          //   'size': "s"
                          // };

                          await ref.read(cartNotifyProvider.notifier).addCart(
                                payload: Data(
                                  productId: productData[i].id.toString(),
                                  productQuantity: productData[i].quantity.toString(),
                                  productPrice: productData[i].price,
                                  productTotalPrice: productData[i].totalPrice,
                                  colorCode: "#141010",
                                  size: "s",
                                ),
                              );
                          //await CartRepository().saveCart(payload: payLoad);

                          Navigator.pushNamed(context, '/dashboard');
                        },
                        icon: const Icon(Icons.shopping_cart,
                            color: Colors.green),
                      ),
                    ),
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
