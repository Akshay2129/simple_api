import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_api/logic/get_api_cubit.dart';
import 'package:simple_api/logic/get_by_group_cubit.dart';
import 'package:simple_api/logic/post_api_cubit.dart';
import 'package:simple_api/model/get_by_group.dart';
import 'package:simple_api/view/home_screen.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => GetApiCubit(),
      ),
      BlocProvider(
        create: (context) => PostApiCubit(),
      ),
      BlocProvider(
        create: (context) => GetByGroupCubit(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
