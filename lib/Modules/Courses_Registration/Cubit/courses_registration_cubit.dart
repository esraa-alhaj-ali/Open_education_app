import 'package:bloc/bloc.dart';
import 'package:open_Education/Modules/Courses_Registration/Cubit/courses_registration_state.dart';

class CoursesRegistrationCubit extends Cubit<CoursesRegistrationState> {
  CoursesRegistrationCubit():super(CoursesRegistrationInitialState());

  void registerCourses()async{
     //loading
     emit(CoursesRegistrationLoadingState());
      //doSomething()
    await doSomething();
     //successful or error
     emit(CoursesRegistrationSuccessfulState());
  }
  Future<void> doSomething()async{
   return await  Future.delayed(const Duration(seconds: 3));
  }

}














































































// class CoursesRegistrationCubit extends




















































// import 'package:bloc/bloc.dart';
//
// class CoursesRegistrationCubit extends Cubit<int>{
//   CoursesRegistrationCubit(super.initialState);
//
//   void register(){
//
//   }
//   void dosomthing(){}
// }
//
//
//














