import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projcub/posts/controller/status_controller/status.dart';

class statusCubit extends  Cubit<Status> {
  statusCubit() : super(statusGreen());

  List<String> status=[
    "status1",
    "status2",
    "status3",
    "status4",
    "status5",
    "status6",
    "status7",
    "status8",


  ];
   Color backgroundstatus =const Color.fromARGB(255, 134, 59, 32);

  onchangeBackgrounStatus(){
     if(backgroundstatus ==const Color.fromARGB(255, 134, 59, 32)){
      backgroundstatus=Colors.green;
     }else{
      backgroundstatus=const Color.fromARGB(255, 134, 59, 32);
     }
     emit(statusRed());
  }
}