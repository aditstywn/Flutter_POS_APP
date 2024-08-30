import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pos_app/core/constants/colors.dart';
import 'package:flutter_pos_app/presentations/home/pages/home_pages.dart';
import 'package:flutter_pos_app/presentations/pesanan/pages/pesanan_page.dart';
import 'package:flutter_pos_app/presentations/setting/pages/setting_page.dart';

import '../../../bloc/checkout/checkout_bloc.dart';

class MainNav extends StatefulWidget {
  const MainNav({super.key});

  @override
  State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePages(),
    const PesananPage(),
    const Center(child: Text('This is page 3')),
    const SettingPage(),
  ];

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, -2), // bayangan hanya di atas
            ),
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: BottomNavigationBar(
            onTap: _onItemTapped,
            currentIndex: _selectedIndex,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: Colors.grey,
            iconSize: 30,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                // activeIcon: Container(
                //   decoration: const BoxDecoration(
                //     color: AppColors.primary,
                //     shape: BoxShape.circle,
                //   ),
                //   padding: const EdgeInsets.all(6.0),
                //   child: const Icon(
                //     Icons.home,
                //     color: Colors.white,
                //   ),
                // ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const Icon(Icons.shopping_cart_outlined),
                    BlocBuilder<CheckoutBloc, CheckoutState>(
                      builder: (context, state) {
                        final item = state.maybeWhen(
                          orElse: () => 0,
                          checkoutSuccess:
                              (items, discount, tax, serviceCharge) {
                            return items.fold(
                                0,
                                (previousValue, element) =>
                                    previousValue + element.quantity);
                          },
                        );
                        return item > 0
                            ? Positioned(
                                top: -8,
                                right: -8,
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  constraints: const BoxConstraints(
                                    minWidth: 20,
                                    minHeight: 20,
                                  ),
                                  child: Text(
                                    item.toString(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                            : const SizedBox();
                      },
                    ),
                  ],
                ),
                label: 'Pesanan',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.description_rounded),
                label: 'Riwayat',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Setting',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
