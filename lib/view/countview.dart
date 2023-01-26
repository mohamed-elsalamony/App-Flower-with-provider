import 'package:fisrt_bloc_project/view/cubit.dart';
import 'package:fisrt_bloc_project/view/result.dart';
import 'package:fisrt_bloc_project/view/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountView extends StatelessWidget {
  const CountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<CountCubit, CountStates>(
                  builder: (context, state) {
                    return Text("${context.read<CountCubit>().counter}");
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          context.read<CountCubit>().plus();
                        },
                        child: Icon(Icons.add)),
                    TextButton(onPressed: () {
                       context.read<CountCubit>().minus();
                    }, child: Icon(Icons.remove)),
                  ],
                ),
                ElevatedButton(onPressed: (){
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Result(),
                    ),
                  );
                }, child: Text("Result"))
              ],
            ),
          ),
        );
      }
    );
  }
}
