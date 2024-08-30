import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pos_app/components/spaces.dart';
import 'package:flutter_pos_app/core/assets/icons.dart';
import 'package:flutter_pos_app/core/extensions/device.dart';
import 'package:flutter_pos_app/presentations/setting/pages/discount_page.dart';
import 'package:flutter_pos_app/presentations/setting/pages/printer_page.dart';
import 'package:flutter_pos_app/presentations/setting/pages/product/product_page.dart';
import 'package:flutter_pos_app/presentations/setting/pages/tax_page.dart';

import '../../../bloc/auth/auth_bloc.dart';
import '../../../bloc/order/order_bloc.dart';
import '../../../bloc/product/product_bloc.dart';
import '../../../core/constants/colors.dart';
import '../../../data/datasource/auth/auth_local_datasource.dart';
import '../../../data/datasource/product/product_local_datasource.dart';
import '../../auth/pages/login_page.dart';
import '../widgets/setting_card.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 16.0,
          ),
          children: [
            Row(
              children: [
                SettingCard(
                  icon: AppIcons.semua,
                  label: 'Product',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductPage(),
                      ),
                    );
                  },
                ),
                const SpaceWidth(16),
                SettingCard(
                  icon: AppIcons.printer,
                  label: 'Printer',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PrinterPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SpaceHeight(16),
            Row(
              children: [
                SettingCard(
                  icon: AppIcons.discount,
                  label: 'Discount',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DiscountPage(),
                      ),
                    );
                  },
                ),
                const SpaceWidth(16),
                SettingCard(
                  icon: AppIcons.accounting,
                  label: 'Accounting',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TaxPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SpaceHeight(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlocConsumer<ProductBloc, ProductState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      error: (mesage) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(mesage),
                            backgroundColor: Colors.red,
                          ),
                        );
                      },
                      getProductSuccess: (productsResponseModel) {
                        ProductLocalDatasource.instance.deleteAllProduct();
                        ProductLocalDatasource.instance
                            .insertProductList(productsResponseModel.data!);

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Sync Product Success'),
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
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(170, 50),
                            backgroundColor: AppColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          onPressed: () {
                            context
                                .read<ProductBloc>()
                                .add(const ProductEvent.getProduct());
                          },
                          child: const Text(
                            'Sync Product',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.white,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
                BlocConsumer<OrderBloc, OrderState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      error: (mesage) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(mesage),
                            backgroundColor: Colors.red,
                          ),
                        );
                      },
                      syncOrderSuccess: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Sync Order Success'),
                            backgroundColor: AppColors.green,
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
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(170, 50),
                            backgroundColor: AppColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          onPressed: () {
                            context
                                .read<OrderBloc>()
                                .add(const OrderEvent.syncOrder());
                          },
                          child: const Text(
                            'Sync Order',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.white,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
            const SpaceHeight(8),
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  logoutSucess: (message) {
                    AuthLocalDatasource().removeAuthData();

                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.green,
                        content: Text(
                          'Logout Success',
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
                        context.read<AuthBloc>().add(
                              const AuthEvent.logout(),
                            );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.logout,
                            size: 20,
                            color: AppColors.white,
                          ),
                          SpaceWidth(10),
                          Text(
                            'Keluar',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.white,
                            ),
                          ),
                        ],
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


        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
            // BlocConsumer<ProductBloc, ProductState>(
            //   listener: (context, state) {
            //     state.maybeWhen(
            //       orElse: () {},
            //       error: (mesage) {
            //         ScaffoldMessenger.of(context).showSnackBar(
            //           SnackBar(
            //             content: Text(mesage),
            //             backgroundColor: Colors.red,
            //           ),
            //         );
            //       },
            //       getProductSuccess: (productsResponseModel) {
            //         ProductLocalDatasource.instance.deleteAllProduct();
            //         ProductLocalDatasource.instance
            //             .insertProductList(productsResponseModel.data!);

            //         ScaffoldMessenger.of(context).showSnackBar(
            //           const SnackBar(
            //             content: Text('Sync Product Success'),
            //           ),
            //         );
            //       },
            //     );
            //   },
            //   builder: (context, state) {
            //     return state.maybeWhen(
            //       loading: () => const Center(
            //         child: CircularProgressIndicator(),
            //       ),
            //       orElse: () {
            //         return ElevatedButton(
            //           onPressed: () {
            //             context
            //                 .read<ProductBloc>()
            //                 .add(const ProductEvent.getProduct());
            //           },
            //           child: const Text('Sync Data Product'),
            //         );
            //       },
            //     );
            //   },
            // ),
            // BlocConsumer<OrderBloc, OrderState>(
            //   listener: (context, state) {
            //     state.maybeWhen(
            //       orElse: () {},
            //       error: (mesage) {
            //         ScaffoldMessenger.of(context).showSnackBar(
            //           SnackBar(
            //             content: Text(mesage),
            //             backgroundColor: Colors.red,
            //           ),
            //         );
            //       },
            //       syncOrderSuccess: () {
            //         ScaffoldMessenger.of(context).showSnackBar(
            //           const SnackBar(
            //             content: Text('Sync Order Success'),
            //             backgroundColor: AppColors.green,
            //           ),
            //         );
            //       },
            //     );
            //   },
            //   builder: (context, state) {
            //     return state.maybeWhen(
            //       loading: () => const Center(
            //         child: CircularProgressIndicator(),
            //       ),
            //       orElse: () {
            //         return ElevatedButton(
            //           onPressed: () {
            //             context
            //                 .read<OrderBloc>()
            //                 .add(const OrderEvent.syncOrder());
            //           },
            //           child: const Text('Sync Order'),
            //         );
            //       },
            //     );
            //   },
            // ),
            // Center(
            //   child: BlocConsumer<AuthBloc, AuthState>(
            //     listener: (context, state) {
            //       state.maybeWhen(
            //         orElse: () {},
            //         logoutSucess: (message) {
            //           AuthLocalDatasource().removeAuthData();

            //           Navigator.pushReplacement(
            //               context,
            //               MaterialPageRoute(
            //                 builder: (context) => const LoginPage(),
            //               ));

            //           ScaffoldMessenger.of(context).showSnackBar(
            //             const SnackBar(
            //               backgroundColor: Colors.green,
            //               content: Text(
            //                 'Logout Success',
            //                 style: TextStyle(
            //                   color: Colors.black,
            //                 ),
            //               ),
            //             ),
            //           );
            //         },
            //         error: (message) {
            //           ScaffoldMessenger.of(context).showSnackBar(
            //             SnackBar(
            //               backgroundColor: Colors.red,
            //               content: Text(
            //                 message,
            //                 style: const TextStyle(
            //                   color: Colors.black,
            //                 ),
            //               ),
            //             ),
            //           );
            //         },
            //       );
            //     },
            //     builder: (context, state) {
            //       return state.maybeWhen(
            //         orElse: () {
            //           return ElevatedButton(
            //             onPressed: () {
            //               context.read<AuthBloc>().add(
            //                     const AuthEvent.logout(),
            //                   );
            //             },
            //             child: const Text('Keluar'),
            //           );
            //         },
            //         loading: () => const Center(
            //           child: CircularProgressIndicator(),
            //         ),
            //       );
            //     },
            //   ),
            // ),
        //   ],
        // ),
