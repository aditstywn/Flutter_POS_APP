import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pos_app/core/constants/colors.dart';
import 'package:flutter_pos_app/presentations/home/pages/main_nav.dart';

import '../../../bloc/auth/auth_bloc.dart';
import '../../../data/datasource/auth/auth_local_datasource.dart';
import '../../../data/models/request/auth/login_request_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailC = TextEditingController();
  final passC = TextEditingController();

  bool isHide = true;

  @override
  void dispose() {
    emailC.dispose();
    passC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Icon(
            Icons.flutter_dash,
            size: 150,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Selamat Datang Di Flutter POS',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          TextField(
            controller: emailC,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              labelText: 'Email',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: isHide,
            controller: passC,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.key),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isHide = !isHide;
                    });
                  },
                  icon: const Icon(Icons.remove_red_eye)),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              labelText: 'Password',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                loginSuccess: (loginResponseModel) {
                  AuthLocalDatasource().saveAuthData(loginResponseModel);

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainNav(),
                    ),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.green,
                      content: Text(
                        'Login Success',
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
                      backgroundColor: WidgetStatePropertyAll(
                        AppColors.primary,
                      ),
                    ),
                    onPressed: () {
                      final loginRequest = LoginRequestModel(
                        email: emailC.text,
                        password: passC.text,
                      );

                      context
                          .read<AuthBloc>()
                          .add(AuthEvent.login(loginRequest));

                      emailC.clear();
                      passC.clear();
                    },
                    child: const Text(
                      'Masuk',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      )),
    );
  }
}
