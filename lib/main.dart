import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_4_serious/src/core/router/app_router.dart';
import 'package:flutter_exam_4_serious/src/core/theme/Apptheme.dart';
import 'package:flutter_exam_4_serious/src/features/auth/screens/sign_up_screen.dart';
import 'package:flutter_exam_4_serious/src/features/home/cubit/home_cubit.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init;
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
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppPages.signup,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
    );
  }
}
