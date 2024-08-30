import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pos_app/core/extensions/device.dart';
import 'package:flutter_pos_app/data/models/request/discount/addDiscount_request_model.dart';
import 'package:intl/intl.dart';

import '../../../bloc/discount/discount_bloc.dart';
import '../../../components/custom_text_field.dart';
import '../../../components/spaces.dart';
import '../../../core/constants/colors.dart';
import '../models/dropDown_model.dart';

class FormDiscount extends StatefulWidget {
  const FormDiscount({super.key});

  @override
  State<FormDiscount> createState() => _FormDiscountState();
}

class _FormDiscountState extends State<FormDiscount> {
  final _formkey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final discountController = TextEditingController();
  final expiredDateController = TextEditingController();
  DateTime? selectedDate;

  String? selectedStatus;

  final List<DropdownModel> status = [
    DropdownModel(name: 'Active', value: 'active'),
    DropdownModel(name: 'Inactive', value: 'inactive'),
  ];

  String? selectedType;

  final List<DropdownModel> type = [
    DropdownModel(name: 'Percentage', value: 'percentage'),
    DropdownModel(name: 'Fixed', value: 'fixed'),
  ];

  @override
  void dispose() {
    nameController.dispose();
    discountController.dispose();
    expiredDateController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Discount'),
        // backgroundColor: AppColors.primary,
      ),
      body: Form(
        key: _formkey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            CustomTextField(
              controller: nameController,
              label: 'Nama Diskon',
              onChanged: (value) {},
            ),
            const SpaceHeight(24.0),
            CustomTextField(
              controller: descriptionController,
              label: 'Deskripsi (Opsional)',
              onChanged: (value) {},
            ),
            const SpaceHeight(24.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  child: DropdownButtonFormField<String>(
                    hint: Text(
                      selectedType ?? 'Pilih Type',
                      style: TextStyle(
                        color:
                            selectedType == null ? Colors.grey : Colors.black,
                      ),
                    ),
                    items: type.map((DropdownModel status) {
                      return DropdownMenuItem<String>(
                        value: status.value,
                        child: Text(status.name),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        selectedType = value;
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
                ),
                const SpaceWidth(14.0),
                Flexible(
                  child: CustomTextField(
                    showLabel: false,
                    controller: discountController,
                    label: 'Percent',
                    prefixIcon: const Icon(Icons.percent),
                    onChanged: (value) {},
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SpaceHeight(24.0),
            DropdownButtonFormField<String>(
              hint: Text(
                selectedStatus ?? 'Pilih Status',
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
            const SpaceHeight(24.0),
            TextField(
              controller: expiredDateController,
              readOnly: true, // Field hanya bisa diisi melalui pemilih tanggal
              decoration: InputDecoration(
                labelText: 'Tanggal Kadaluarsa',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () async {
                    final DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: selectedDate ?? DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    if (picked != null && picked != selectedDate) {
                      setState(() {
                        selectedDate = picked;
                        expiredDateController.text =
                            DateFormat('yyyy-MM-dd').format(picked);
                      });
                    }
                  },
                ),
              ),
            ),
            const SpaceHeight(24),
            BlocConsumer<DiscountBloc, DiscountState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  addDiscountSuccess: (addDiscountResponseModel) {
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const DiscountPage(),
                    //   ),
                    // );

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.green,
                        content: Text(
                          'Add Discount Success',
                          style: TextStyle(
                            color: AppColors.black,
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
                            color: AppColors.black,
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(context.deviceWidth, 50),
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          final addDiscount = AddDiscountRequestModel(
                            name: nameController.text,
                            description: descriptionController.text,
                            value: int.parse(discountController.text),
                            type: selectedType!,
                            status: selectedStatus!,
                            expiredDate: selectedDate!,
                          );

                          context
                              .read<DiscountBloc>()
                              .add(DiscountEvent.addDiscount(addDiscount));

                          // nameController.clear();
                          // descriptionController.clear();
                          // discountController.clear();
                        }
                      },
                      child: const Text(
                        'Simpan Diskon',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.white,
                        ),
                      ),
                    );
                  },
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
