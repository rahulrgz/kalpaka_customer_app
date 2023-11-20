import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kalpaka_customer_app/features/authentication/authRepository/authRepository.dart';
import 'package:kalpaka_customer_app/features/homePage/screeens/homeScreen.dart';
import 'package:riverpod/riverpod.dart';
import '../../../core/utils.dart';

final authControllerProvider=StateNotifierProvider<AuthController,bool>((ref) => AuthController(authRepository: ref.watch(authRepositoryProvider), ref: ref));

class AuthController extends StateNotifier<bool>{
  final AuthRepository _authRepository;
  final Ref _ref;

  AuthController({required AuthRepository authRepository,required Ref ref})
      :_authRepository=authRepository,_ref=ref,super(false);


void loginUser({required String number,required BuildContext context})async{
  state=true;
 final user =await _authRepository.loginUser(number: number);
 state =false;

 user.fold((l) => showSnackbar(context: context, text: 'login Failed'),(r){

   if(r!=null){
     Navigator.of(context)
         .pushReplacement(MaterialPageRoute(builder: (context) {
       return
         HomeScreen();
     }));
   }
 });

}
}