import 'package:fisrt_bloc_project/view/cubit.dart';
import 'package:fisrt_bloc_project/view/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<CountCubit, CountStates>(
        builder: (context, state) {
          return Center(child: Text("${context.read<CountCubit>().counter}"));
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<CountCubit>().reset();
          },
          child: Icon(Icons.restore_from_trash_outlined)),
    );
  }
}
