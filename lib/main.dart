import 'package:flutter/material.dart';
import 'package:flutter_absensi/data/datasource/auth_remote_datasource.dart';
import 'package:flutter_absensi/data/style/style.dart';
import 'package:flutter_absensi/ui/auth/bloc/login/login_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/auth/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(AuthRemoteDatasource()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Intensive Club batch 16',
        theme: MainStyle.light,
        home: const SplashPage(),
      ),
    );
  }
}
