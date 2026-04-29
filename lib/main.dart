import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_4_serious/src/core/theme/Apptheme.dart';
import 'package:flutter_exam_4_serious/src/features/auth/screens/sign_up_screen.dart';
import 'package:flutter_exam_4_serious/src/features/home/cubit/home_cubit.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (context) => HomeCubit())],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
    );
  }
}
