import 'package:flutter/material.dart';
import 'package:flutter_absensi/data/datasource/auth_remote_datasource.dart';
import 'package:flutter_absensi/data/style/style.dart';
import 'package:flutter_absensi/presentation/auth/bloc/logout/logout_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/auth/bloc/login/login_bloc.dart';
import 'presentation/auth/pages/splash_page.dart';
import 'presentation/home/bloc/update_user_register_face/update_user_register_face_bloc.dart';

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
          create: (context) => LoginBloc(AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => UpdateUserRegisterFaceBloc(AuthRemoteDatasource()),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Intensive Club batch 16',
        theme: MainStyle.light,
        home: const SplashPage(),
      ),
    );
  }
}
