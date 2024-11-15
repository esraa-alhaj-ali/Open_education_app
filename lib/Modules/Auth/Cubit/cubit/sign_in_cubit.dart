import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:open_Education/Modules/Auth/Cubit/States/sign_in_states.dart';

class SignInCubit extends Cubit<SignInStates> {
  SignInCubit() : super(InitialSignIn());
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> textFieldKey = GlobalKey<FormState>();
  static SignInCubit get(context) => BlocProvider.of(context);
  List  <String> accountType = ["Student" , "Supervisor" ];
  String? selectedAccountType;
 }
