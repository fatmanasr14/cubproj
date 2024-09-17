import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projcub/posts/controller/post_controller/states_posts.dart';

class PostCubit extends Cubit<StatesPosts> {
  PostCubit() : super(postclosedState());

 //////////// posts list
 

 List<String> posts=[
  "post1 about flutter course goudhnmcn gbh jhvn nkllkl iytn ",
  "post2 about python cgb jut6 ggvkk jgyd kyd drdo gdbf fte",
  "post3 about c++ gd ftyol gg esrt tr, uhuio ufj gyd srehgjgj",
  "post4 about c# bhhbjhb   khiyiyy gffft yeyty freyg tytuyh gyi",
  "post5 about java bkhjh hjhg hghkh uhty poo ugyft rtdrtr gyuyg",
  "post6 about robotics gd ftyol gg esrt tr, uhuio ufj gyd srehgjgj",
  "post7 about robotics cgb jut6 ggvkk jgyd kyd drdo gdbf fte",
  "post8 about robotics hjhg hghkh uhty poo ugyft rtdrtr gyuyg",
  "post9 about robotics cgb jut6 ggvkk jgyd kyd drdo gdbf fte",
  "post10 about robotics hjhg hghkh uhty poo ugyft rtdrtr gyuyg",
  "post11 about c# bhhbjhb   khiyiyy gffft yeyty freyg tytuyh gyi",

 ];
 double postpaddind=10;
 void onChangePostPadding(){
  if(postpaddind==10){
    postpaddind=20;
    emit(postOpenState());
  }else{
    postpaddind=10;
    emit(postclosedState());
  }
 }
}