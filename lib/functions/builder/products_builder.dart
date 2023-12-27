import 'package:flutter/material.dart';

import '../../constant/theme/app_colors.dart';
import '../../model/products_model.dart';
import '../../view/widget/build_card_items/card_items_products.dart';

class ProductsBuilder extends StatelessWidget {
  final Future<List<ProductsModel>>? future;

  const ProductsBuilder({super.key, required this.future});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductsModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final List<ProductsModel> products = snapshot.data!;
            return GridView.builder(
              padding: const EdgeInsets.only(top: 50),
              physics: const BouncingScrollPhysics(),
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 9.0,
                  crossAxisSpacing: 6.0,
                  maxCrossAxisExtent: 200),
              itemBuilder: (context, index) {
                return buildCardItemsProducts(
                  nameProducts: products[index].product!,
                  nameCompanies: products[index].company!,
                  image: products[index].image!,
                );
              },
            );
          } else if (snapshot.hasError) {
            return  Center(child: Image.asset('assets/images/Error.png'));
          }
          return const Center(
              child: CircularProgressIndicator(
            color: AppColors.iconAndBarColor,
          ));
        });
  }
}
