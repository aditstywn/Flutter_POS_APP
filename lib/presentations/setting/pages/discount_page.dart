import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pos_app/components/spaces.dart';
import 'package:flutter_pos_app/presentations/setting/widgets/add_data.dart';
import 'package:flutter_pos_app/presentations/setting/widgets/form_discount.dart';

import '../../../bloc/discount/discount_bloc.dart';
import '../../../core/constants/colors.dart';

class DiscountPage extends StatefulWidget {
  const DiscountPage({super.key});

  @override
  State<DiscountPage> createState() => _DiscountPageState();
}

class _DiscountPageState extends State<DiscountPage> {
  @override
  void initState() {
    context.read<DiscountBloc>().add(const DiscountEvent.getDiscount());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discount'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          AddData(
            title: 'Tambah Discount',
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const FormDiscount(),
              );
            },
          ),
          const SpaceHeight(10),
          BlocBuilder<DiscountBloc, DiscountState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (message) => const Center(
                  child: Text('Anda Dalam Mode Offline'),
                ),
                getDiscountSuccess: (discount) {
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: discount.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.85,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                    ),
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            decoration: ShapeDecoration(
                              color: AppColors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  width: 1,
                                  color: AppColors.card,
                                ),
                                borderRadius: BorderRadius.circular(19),
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(20.0),
                                  margin: const EdgeInsets.only(top: 30.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.disabled.withOpacity(0.4),
                                  ),
                                  child: Text(
                                    '${discount[index].value}%',
                                    style: const TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Column(
                                  children: [
                                    const Text(
                                      'Nama Promo : ',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(discount[index].name),
                                  ],
                                ),
                                const Spacer(),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  color: AppColors.red,
                                ),
                                child: const Icon(
                                  Icons.delete,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  color: AppColors.primary,
                                ),
                                child: const Icon(
                                  Icons.edit,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
