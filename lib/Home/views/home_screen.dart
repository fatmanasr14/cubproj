import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projcub/Home/controller/home_cubit.dart';
import 'package:projcub/Home/controller/home_state.dart';
import 'package:projcub/posts/views/second_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          HomeCubit H =context.read<HomeCubit>();
          return Scaffold(
            
            backgroundColor: H.background,
            appBar: AppBar(
              centerTitle: true,
              title: Text(H.title),
            ),
            body: Center(
              child: Column(
                children: [
                  TextButton(onPressed: () {
                    H.onChangeButton();
                  }, child: Text("Change"),),
                  ElevatedButton(onPressed: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SecondPage()),
                      );
                  },
                   child:Text("move to next page"))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
