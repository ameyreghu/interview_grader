import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_grader/bloc/app_data/app_data_cubit.dart';
import 'package:interview_grader/helpers/hydrated_bloc_helper.dart';
import 'package:interview_grader/injection_container.dart';
import 'package:interview_grader/presentation/home/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHydratedBloc();
  initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<AppDataCubit>(),
        ),
      ],
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
            title: 'Interview Grader',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const HomeScreen()),
        designSize: const Size(1920, 1080),
      ),
    );
  }
}
