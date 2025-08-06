import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tpm_absensi_app/bloc/attendance/attendance_bloc.dart';
import 'package:tpm_absensi_app/models/attendance.dart';
import 'package:tpm_absensi_app/presentation/auth/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(AttendanceAdapter());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AttendanceBloc()..add(const AttendanceEvent.checkStatus()),
      child: const MaterialApp(
        home: LoginPage(),
      ),
    );
  }
}
