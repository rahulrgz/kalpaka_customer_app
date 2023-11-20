import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kalpaka_customer_app/features/authentication/authController/authController.dart';
import 'package:riverpod/riverpod.dart';


class LoginScreen extends ConsumerStatefulWidget {
   LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _phoneController=TextEditingController();
  
  loginUser(){
    ref.read(authControllerProvider.notifier).loginUser(number: _phoneController.text, context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: _phoneController,
              decoration: InputDecoration(
                  hintText: 'phoneNumber :',
                  border: OutlineInputBorder()),
            ),
          ),

          ElevatedButton(onPressed: (){
loginUser();
          },
              child: Text("login"),
          )
        ],
      ),
    );
  }
}
