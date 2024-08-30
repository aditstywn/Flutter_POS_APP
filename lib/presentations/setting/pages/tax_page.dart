import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_pos_app/components/spaces.dart';

import '../../../components/custom_tab_bar.dart';
import '../dialogs/form_tax_dialog.dart';
import '../models/tax_model.dart';
import '../widgets/add_data.dart';
import '../widgets/setting_menu_button.dart';
import '../widgets/tax_card.dart';

class TaxPage extends StatefulWidget {
  const TaxPage({super.key});

  @override
  State<TaxPage> createState() => _TaxPageState();
}

class _TaxPageState extends State<TaxPage> {
  final List<TaxModel> items = [
    TaxModel(
      name: 'Pajak',
      value: 11,
      type: TaxType.pajak,
    ),
    TaxModel(
      name: 'Layanan',
      value: 5,
      type: TaxType.layanan,
    ),
    TaxModel(
      name: 'Layanan',
      value: 76,
      type: TaxType.layanan,
    ),
  ];

  final indexValue = ValueNotifier(0);

  void onCategoryTap(int index) {
    indexValue.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Accounting'),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AddData(
                  title: 'Layanan',
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => const FormTaxDialog(),
                    );
                  }),
            ),
            const SpaceHeight(10),
            ValueListenableBuilder(
              valueListenable: indexValue,
              builder: (context, value, child) {
                // Memfilter items berdasarkan kategori yang dipilih
                List<TaxModel> filteredItems = items.where(
                  (item) {
                    return (value == 0 && item.type == TaxType.layanan) ||
                        (value == 1 && item.type == TaxType.pajak);
                  },
                ).toList();

                return Column(
                  children: filteredItems.map(
                    (item) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 2,
                          horizontal: 16,
                        ),
                        child: Card(
                          child: ListTile(
                            title: Text(item.name),
                            subtitle: Text('Nilai: ${item.value}%'),
                            trailing: IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) =>
                                      FormTaxDialog(data: item),
                                );
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  ).toList(),
                );
              },
            ),
          ],
        ),
        bottomNavigationBar: ValueListenableBuilder(
          valueListenable: indexValue,
          builder: (context, value, child) {
            return Padding(
              padding: const EdgeInsets.only(
                left: 18,
                top: 8,
                bottom: 20,
              ),
              child: Row(
                children: [
                  setting_menu_button(
                    label: 'Layanan',
                    isActive: value == 0,
                    onPressed: () => onCategoryTap(0),
                  ),
                  const SpaceWidth(20),
                  setting_menu_button(
                    label: 'Pajak',
                    isActive: value == 1,
                    onPressed: () => onCategoryTap(1),
                  ),
                  const SpaceWidth(20),
                ],
              ),
            );
          },
        ));
  }
}


      // body: SingleChildScrollView(
      //   child: CustomTabBar(
      //     tabTitles: const ['Layanan', 'Pajak'],
      //     initialTabIndex: 0,
      //     tabViews: [
      //       // LAYANAN TAB
      //       SizedBox(
      //         child: GridView.builder(
      //           shrinkWrap: true,
      //           itemCount: items
      //                   .where((element) => element.type.isLayanan)
      //                   .toList()
      //                   .length +
      //               1,
      //           physics: const NeverScrollableScrollPhysics(),
      //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //             childAspectRatio: 0.85,
      //             crossAxisCount: 3,
      //             crossAxisSpacing: 30.0,
      //             mainAxisSpacing: 30.0,
      //           ),
      //           itemBuilder: (context, index) {
      //             if (index == 0) {
      //               return AddData(
      //                 title: 'Tambah Perhitungan',
      //                 onPressed: onAddDataTap,
      //               );
      //             }
      //             final item = items
      //                 .where((element) => element.type.isLayanan)
      //                 .toList()[index - 1];
      //             return TaxCard(
      //               data: item,
      //               onEditTap: () => onEditTap(item),
      //             );
      //           },
      //         ),
      //       ),

      //       // PAJAK TAB
      //       SizedBox(
      //         child: GridView.builder(
      //           shrinkWrap: true,
      //           itemCount: items
      //                   .where((element) => element.type.isPajak)
      //                   .toList()
      //                   .length +
      //               1,
      //           physics: const NeverScrollableScrollPhysics(),
      //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //             childAspectRatio: 0.85,
      //             crossAxisCount: 3,
      //             crossAxisSpacing: 30.0,
      //             mainAxisSpacing: 30.0,
      //           ),
      //           itemBuilder: (context, index) {
      //             if (index == 0) {
      //               return AddData(
      //                 title: 'Tambah Perhitungan',
      //                 onPressed: onAddDataTap,
      //               );
      //             }
      //             final item = items
      //                 .where((element) => element.type.isPajak)
      //                 .toList()[index - 1];
      //             return TaxCard(
      //               data: item,
      //               onEditTap: () => onEditTap(item),
      //             );
      //           },
      //         ),
      //       ),
      //     ],
      //   ),
      // ),