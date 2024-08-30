import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pos_app/bloc/bloc/midtrans_bloc.dart';
import 'package:flutter_pos_app/bloc/checkout/checkout_bloc.dart';
import 'package:flutter_pos_app/bloc/discount/discount_bloc.dart';
import 'package:flutter_pos_app/bloc/local_product/local_product_bloc.dart';
import 'package:flutter_pos_app/bloc/order/order_bloc.dart';
import 'package:flutter_pos_app/data/datasource/auth/auth_remote_datasource.dart';
import 'package:flutter_pos_app/data/datasource/discount/discount_remote_datasource.dart';
import 'package:flutter_pos_app/data/datasource/midtrans/midtrans_remote_datasource.dart';
import 'package:flutter_pos_app/data/datasource/order/order_remote_datasource.dart';
import 'package:flutter_pos_app/data/datasource/product/product_local_datasource.dart';
import 'package:flutter_pos_app/presentations/auth/pages/login_page.dart';
import 'package:flutter_pos_app/presentations/home/pages/main_nav.dart';

import 'bloc/auth/auth_bloc.dart';
import 'bloc/product/product_bloc.dart';
import 'data/datasource/auth/auth_local_datasource.dart';
import 'data/datasource/product/product_remote_datasource.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) =>
              LocalProductBloc(ProductLocalDatasource.instance),
        ),
        BlocProvider(
          create: (context) => ProductBloc(ProductRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => CheckoutBloc(),
        ),
        BlocProvider(
          create: (context) => OrderBloc(OrderRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => DiscountBloc(DiscountRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => MidtransBloc(MidtransRemoteDatasource()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: FutureBuilder<bool>(
          future: AuthLocalDatasource().isAuth(),
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data == true) {
              return const MainNav();
            } else {
              return const LoginPage();
            }
          },
        ),
      ),
    );
  }
}
