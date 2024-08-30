import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pos_app/components/spaces.dart';
import 'package:flutter_pos_app/presentations/setting/models/dropDown_model.dart';
import 'package:flutter_pos_app/presentations/setting/pages/product/product_page.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../bloc/product/product_bloc.dart';
import '../../../../data/models/request/product/add_product_request_model.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final nameController = TextEditingController();

  final descriptionController = TextEditingController();

  final priceController = TextEditingController();

  final stockController = TextEditingController();

  XFile? image;

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
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    stockController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final XFile? pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      image = pickedFile;
    } else {
      debugPrint('No image selected.');
      image =
          null; // Atur image menjadi null jika tidak ada gambar yang dipilih
    }

    setState(() {});
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
                child: image != null
                    ? Image.file(
                        File(image!.path),
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        "assets/image/no image.jpg",
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await _pickImage();
              },
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.amber),
              ),
              child: const Text(
                'Pilih Foto',
                style: TextStyle(
                  color: Colors.black,
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
              hint: const Text('Pilih Kategori'),
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
              hint: const Text('Pilih Status'),
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
              hint: const Text('Is Favorite'),
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
                  addProductSuccess: (product) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductPage(),
                        ));
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.green,
                        content: Text(
                          'Add Product Success',
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
                        final product = AddProductRequest(
                          name: nameController.text,
                          description: descriptionController.text,
                          price: int.parse(priceController.text),
                          stock: int.parse(stockController.text),
                          categoryId: selectedCategory!,
                          isFavorite: selectedFavorite!,
                          status: selectedStatus!,
                          image: image!,
                        );

                        context
                            .read<ProductBloc>()
                            .add(ProductEvent.addProduct(product));
                      },
                      child: const Text(
                        'Tambah',
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
