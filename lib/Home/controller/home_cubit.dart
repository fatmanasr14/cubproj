import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projcub/Home/controller/home_state.dart';

class HomeCubit extends  Cubit<HomeState> {
  HomeCubit() : super(HomeRedState());




  Color background = Color.fromARGB(255, 211, 214, 109);
  String title="Yellow";

  onChangeButton(){
    if(background==Color.fromARGB(255, 211, 214, 109)){
      background = Color.fromARGB(255, 113, 147, 188);
      title="blue";
      emit(HomeOrangeState());
    }else{
      background = Color.fromARGB(255, 211, 214, 109);
      title="Yellow";
      emit(HomeRedState());
    }

} 
  movetonextpage(){
   
  }




}