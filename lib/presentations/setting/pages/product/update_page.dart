// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_pos_app/data/models/request/product/update_product_request_model.dart';
import 'package:flutter_pos_app/presentations/setting/pages/product/product_page.dart';

import '../../../../bloc/product/product_bloc.dart';
import '../../../../components/spaces.dart';
import '../../../../core/constants/variables.dart';
import '../../../../data/models/response/product/product_response_models.dart';
import '../../models/dropDown_model.dart';

class UpdateProductPage extends StatefulWidget {
  final Product product;
  const UpdateProductPage({
    super.key,
    required this.product,
  });

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  final nameController = TextEditingController();

  final descriptionController = TextEditingController();

  final priceController = TextEditingController();

  final stockController = TextEditingController();

  String? selectedCategory;
  final List<DropdownModel> categories = [
    DropdownModel(name: 'Makanan', value: '1'),
    DropdownModel(name: 'Minuman', value: '2'),
    DropdownModel(name: 'Snack', value: '3'),
  ];

  String? selectedStatus;

  final List<DropdownModel> status = [
    DropdownModel(name: 'Active', value: '1'),
    DropdownModel(name: 'Inactive', value: '0'),
  ];

  String? selectedFavorite;

  final List<DropdownModel> favorite = [
    DropdownModel(name: 'Yes', value: '1'),
    DropdownModel(name: 'No', value: '0'),
  ];

  @override
  void initState() {
    nameController.text = widget.product.name.toString();
    descriptionController.text = widget.product.description.toString();
    priceController.text = '${widget.product.price}';
    stockController.text = '${widget.product.stock}';
    selectedCategory = widget.product.categoryId.toString();
    selectedStatus = widget.product.status.toString();
    selectedFavorite = widget.product.isFavorite.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Container(
              height: 200,
              padding: const EdgeInsets.all(10.0),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                // child: Image.asset(
                //   'assets/image/no image.jpg',
                //   width: 100,
                //   height: 100,
                //   fit: BoxFit.cover,
                // ),
                child: CachedNetworkImage(
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  imageUrl: "${Variables.imageBaseUrl}${widget.product.image}",
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Nama Product',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                labelText: 'Description',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Harga Product',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: stockController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Setok Product',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownButtonFormField<String>(
              hint: Text(
                selectedCategory == null
                    ? 'Pilih Category'
                    : selectedCategory == '1'
                        ? 'Makanan'
                        : selectedCategory == '2'
                            ? 'Minuman'
                            : selectedCategory == '3'
                                ? 'Snack'
                                : '',
                style: TextStyle(
                  color: selectedCategory == null ? Colors.grey : Colors.black,
                ),
              ),
              items: categories.map((DropdownModel category) {
                return DropdownMenuItem<String>(
                  value: category.value,
                  child: Text(category.name),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedCategory = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
              ),
            ),
            const SpaceHeight(10),
            DropdownButtonFormField<String>(
              hint: Text(
                selectedStatus == null
                    ? 'Pilih Status'
                    : selectedStatus == '0'
                        ? 'Inactive'
                        : 'Active',
                style: TextStyle(
                  color: selectedStatus == null ? Colors.grey : Colors.black,
                ),
              ),
              items: status.map((DropdownModel status) {
                return DropdownMenuItem<String>(
                  value: status.value,
                  child: Text(status.name),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedStatus = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
              ),
            ),
            const SpaceHeight(10),
            DropdownButtonFormField<String>(
              hint: Text(
                selectedFavorite == null
                    ? 'Pilih Status'
                    : selectedFavorite == '0'
                        ? 'No'
                        : 'Yes',
                style: TextStyle(
                  color: selectedFavorite == null ? Colors.grey : Colors.black,
                ),
              ),
              items: favorite.map((DropdownModel favorite) {
                return DropdownMenuItem<String>(
                  value: favorite.value,
                  child: Text(favorite.name),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedFavorite = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
              ),
            ),
            const SpaceHeight(20),
            BlocConsumer<ProductBloc, ProductState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  updateProductSuccess: (product) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductPage(),
                        ));
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.green,
                        content: Text(
                          'Update Product Success',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  },
                  error: (message) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        content: Text(
                          message,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  orElse: () {
                    return ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.amber),
                      ),
                      onPressed: () {
                        final update = UpdateProductRequestModel(
                          name: nameController.text,
                          description: descriptionController.text,
                          price: priceController.text,
                          stock: stockController.text,
                          categoryId: selectedCategory!,
                          isFavorite: selectedFavorite!,
                          status: selectedStatus!,
                        );

                        context.read<ProductBloc>().add(
                              ProductEvent.updateProduct(
                                  update, widget.product.id!),
                            );
                      },
                      child: const Text(
                        'Ubah',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
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
