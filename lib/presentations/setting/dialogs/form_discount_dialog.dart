// import 'package:flutter/material.dart';
// import 'package:flutter_pos_app/core/constants/colors.dart';
// import 'package:flutter_pos_app/core/extensions/device.dart';
// import 'package:flutter_pos_app/presentations/setting/models/dropDown_model.dart';

// import '../../../components/custom_text_field.dart';
// import '../../../components/spaces.dart';
// import '../models/discount_model.dart';
// import '../models/product_category.dart';

// class FormDiscountDialog extends StatefulWidget {
//   final DiscountModel? data;
//   const FormDiscountDialog({super.key, this.data});

//   @override
//   State<FormDiscountDialog> createState() => _FormDiscountDialogState();
// }

// class _FormDiscountDialogState extends State<FormDiscountDialog> {
//   final nameController = TextEditingController();
//   final descriptionController = TextEditingController();
//   final discountController = TextEditingController();

//   String? selectedStatus;

//   final List<StatusModel> status = [
//     StatusModel(name: 'Active', value: 'active'),
//     StatusModel(name: 'Inactive', value: 'inactive'),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: const Icon(Icons.close),
//           ),
//           Text(widget.data == null ? 'Tambah Diskon' : 'Edit Diskon'),
//           const Spacer(),
//         ],
//       ),
//       content: SingleChildScrollView(
//         child: SizedBox(
//           width: context.deviceWidth / 5,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               CustomTextField(
//                 controller: nameController,
//                 label: 'Nama Diskon',
//                 onChanged: (value) {},
//               ),
//               const SpaceHeight(24.0),
//               CustomTextField(
//                 controller: descriptionController,
//                 label: 'Deskripsi (Opsional)',
//                 onChanged: (value) {},
//               ),
//               const SpaceHeight(24.0),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Flexible(
//                     child: CustomTextField(
//                       controller: TextEditingController(text: 'Presentase'),
//                       label: 'Nilai',
//                       suffixIcon: const Icon(Icons.chevron_right),
//                       onChanged: (value) {},
//                       // readOnly: true,
//                     ),
//                   ),
//                   const SpaceWidth(14.0),
//                   Flexible(
//                     child: CustomTextField(
//                       showLabel: false,
//                       controller: discountController,
//                       label: 'Percent',
//                       prefixIcon: const Icon(Icons.percent),
//                       onChanged: (value) {},
//                       keyboardType: TextInputType.number,
//                     ),
//                   ),
//                   DropdownButtonFormField<String>(
//                     hint: Text(
//                       selectedStatus ?? 'Pilih Kategori',
//                       style: TextStyle(
//                         color:
//                             selectedStatus == null ? Colors.grey : Colors.black,
//                       ),
//                     ),
//                     items: status.map((StatusModel status) {
//                       return DropdownMenuItem<String>(
//                         value: status.value,
//                         child: Text(status.name),
//                       );
//                     }).toList(),
//                     onChanged: (String? value) {
//                       setState(() {
//                         selectedStatus = value;
//                       });
//                     },
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(16.0),
//                         borderSide: const BorderSide(color: Colors.grey),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(16.0),
//                         borderSide: const BorderSide(color: Colors.grey),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SpaceHeight(24.0),
//               const SpaceHeight(24.0),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   minimumSize: Size(context.deviceWidth, 50),
//                   backgroundColor: AppColors.primary,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                 ),
//                 onPressed: () {},
//                 child: const Text(
//                   'Simpan Diskon',
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: AppColors.white,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
