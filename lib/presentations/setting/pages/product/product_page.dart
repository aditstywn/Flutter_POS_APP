import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pos_app/components/spaces.dart';
import 'package:flutter_pos_app/core/constants/colors.dart';
import 'package:flutter_pos_app/presentations/setting/pages/product/add_page.dart';
import 'package:flutter_pos_app/presentations/setting/pages/product/update_page.dart';

import '../../../../bloc/product/product_bloc.dart';
import '../../../../core/constants/variables.dart';
import '../../widgets/add_data.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  void initState() {
    context.read<ProductBloc>().add(const ProductEvent.getProduct());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            AddData(
              title: 'Tambah Product',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddProductPage(),
                  ),
                );
              },
            ),
            const SpaceHeight(10),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  getProductSuccess: (productsResponseModel) {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: productsResponseModel.data!.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: AppColors
                                    .grey, // Warna latar belakang jika gambar gagal dimuat
                                backgroundImage: NetworkImage(
                                  productsResponseModel.data![index].image!
                                          .contains('http')
                                      ? productsResponseModel
                                          .data![index].image!
                                      : "${Variables.imageBaseUrl}${productsResponseModel.data![index].image}",
                                ),
                                maxRadius: 30,
                              ),
                              title: Text(
                                productsResponseModel.data![index].name!,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              subtitle: Text(
                                productsResponseModel
                                    .data![index].category!.name
                                    .toString(),
                              ),
                              trailing: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => UpdateProductPage(
                                          product: productsResponseModel
                                              .data![index],
                                        ),
                                      ));
                                },
                                icon: const Icon(
                                  Icons.edit,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
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
