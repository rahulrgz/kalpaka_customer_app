import 'package:flutter/material.dart';
import 'package:kalpaka_customer_app/core/globalVariables.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: height*1/3,
            width: width,
            color: Colors.red[100],
          ),
        );
      },
      itemCount: 5),
    );
  }
}
