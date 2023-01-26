import 'package:fisrt_bloc_project/view/countview.dart';
import 'package:fisrt_bloc_project/view/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CountCubit(),
      child: const MaterialApp(
        home: CountView(),
      ),
    );
  }
}
