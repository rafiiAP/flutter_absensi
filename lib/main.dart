import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_absensi/data/datasource/auth_remote_datasource.dart';
import 'package:flutter_absensi/data/datasource/permisson_remote_datasource.dart';
import 'package:flutter_absensi/data/style/style.dart';
import 'package:flutter_absensi/firebase_options.dart';
import 'package:flutter_absensi/presentation/auth/bloc/logout/logout_bloc.dart';
import 'package:flutter_absensi/presentation/home/bloc/add_permission/add_permission_bloc.dart';
import 'package:flutter_absensi/presentation/home/bloc/bloc/get_attendance_by_date_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/datasource/attendance_remote_datasource.dart';
import 'data/datasource/firebase_messanging_remote_datasource.dart';
import 'presentation/auth/bloc/login/login_bloc.dart';
import 'presentation/auth/pages/splash_page.dart';
import 'presentation/home/bloc/checkin_attendance/checkin_attendance_bloc.dart';
import 'presentation/home/bloc/checkout_attendance/checkout_attendance_bloc.dart';
import 'presentation/home/bloc/get_company/get_company_bloc.dart';
import 'presentation/home/bloc/is_checkedin/is_checkedin_bloc.dart';
import 'presentation/home/bloc/update_user_register_face/update_user_register_face_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await FirebaseMessangingRemoteDatasource().initialize();

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
        ),
        BlocProvider(
          create: (context) => GetCompanyBloc(AttendanceRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => IsCheckedinBloc(AttendanceRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => CheckinAttendanceBloc(AttendanceRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => CheckoutAttendanceBloc(AttendanceRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => AddPermissionBloc(PermissonRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => GetAttendanceByDateBloc(AttendanceRemoteDatasource()),
        ),
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
