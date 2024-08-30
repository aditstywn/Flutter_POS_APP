import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pos_app/bloc/local_product/local_product_bloc.dart';
import 'package:flutter_pos_app/components/spaces.dart';
import 'package:flutter_pos_app/core/assets/icons.dart';

import '../../../data/models/response/product/product_response_models.dart';
import '../widgets/menu_button.dart';
import '../widgets/product_card.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  final indexValue = ValueNotifier(0);

  void onCategoryTap(int index) {
    indexValue.value = index;
  }

  @override
  void initState() {
    context
        .read<LocalProductBloc>()
        .add(const LocalProductEvent.getLocalProduct());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 16.0,
          ),
          children: [
            const SpaceHeight(8.0),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  labelText: 'Searching Product',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ValueListenableBuilder(
              valueListenable: indexValue,
              builder: (context, value, child) => Row(
                children: [
                  MenuButton(
                    size: 75,
                    iconPath: AppIcons.semua,
                    label: 'Semua',
                    isActive: value == 0,
                    onPressed: () => onCategoryTap(0),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  MenuButton(
                    size: 75,
                    iconPath: AppIcons.makanan,
                    label: 'Makanan',
                    isActive: value == 1,
                    onPressed: () => onCategoryTap(1),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  MenuButton(
                    size: 75,
                    iconPath: AppIcons.minuman,
                    label: 'Minuman',
                    isActive: value == 2,
                    onPressed: () => onCategoryTap(2),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  MenuButton(
                    size: 75,
                    iconPath: AppIcons.snack,
                    label: 'Snack',
                    isActive: value == 3,
                    onPressed: () => onCategoryTap(3),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            ValueListenableBuilder(
              valueListenable: indexValue,
              builder: (context, value, child) {
                return BlocBuilder<LocalProductBloc, LocalProductState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      getLocalProductSuccess: (product) {
                        List<Product> filteredProducts;
                        if (value == 0) {
                          filteredProducts = product;
                        } else {
                          filteredProducts = product
                              .where((element) => element.category!.id == value)
                              .toList();
                        }
                        if (filteredProducts.isEmpty) {
                          return const Center(
                            child: Text(
                              'No Data',
                            ),
                          );
                        }
                        return GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: filteredProducts.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.78,
                            crossAxisCount: 2,
                            crossAxisSpacing: 20.0,
                            mainAxisSpacing: 20.0,
                          ),
                          itemBuilder: (context, index) {
                            return ProductCard(
                              product: filteredProducts[index],
                            );
                          },
                        );
                      },
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
