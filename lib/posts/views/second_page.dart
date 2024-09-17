import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projcub/Home/views/home_screen.dart';
import 'package:projcub/posts/controller/post_controller/cubit_posts.dart';
import 'package:projcub/posts/controller/post_controller/states_posts.dart';
import 'package:projcub/posts/controller/status_controller/cubit.dart';
import 'package:projcub/posts/controller/status_controller/status.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text("Home",style: TextStyle(color: const Color.fromARGB(255, 134, 59, 32)),),
          leading: IconButton(onPressed: (){
            Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
          }, icon: Icon(Icons.arrow_back,color: const Color.fromARGB(255, 134, 59, 32),)),
        ),
        body: Column(
          children: [
            ///status
            BlocProvider(
              create: (context) => statusCubit(),
              child: BlocBuilder<statusCubit, Status>(
                builder: (context, state) {
                  statusCubit controller = context.read<statusCubit>();
                  return SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: controller.status
                          .map((e) => InkWell(
                                onTap: () {
                                  controller.onchangeBackgrounStatus();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: controller.backgroundstatus,
                                      border: Border.all(
                                          color: Colors.grey, width: 2),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                    child: Text(
                                      e,
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 247, 247, 247),
                                          fontSize: 20),
                                          
                                    ),
                                  ),
                                  margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                ),
                              ))
                          .toList(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20,),
            BlocProvider(
              create: (context) => PostCubit(),
              child: BlocBuilder<PostCubit, StatesPosts>(
                builder: (context, state) {
                  PostCubit controller1=context.read<PostCubit>();
                  return Flexible(
                    child: ListView(children: 
                      controller1.posts.map((e) =>InkWell(
                        onTap: () {
                          controller1.onChangePostPadding();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.all(controller1.postpaddind),
                            child: Text(e ,style:TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              color: const Color.fromARGB(255, 134, 59, 32)) ,),
                          ),
                        ),
                      )).toList(),
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }
}
