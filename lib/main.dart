
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hesap_beta/calculator.dart';
  
 void main(List<String> args) {
   runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
     home: MyEv(),
   ));
   SystemChrome.setSystemUIOverlayStyle(
     SystemUiOverlayStyle( statusBarColor: Colors.transparent, 
     systemNavigationBarColor: Colors.white
     ), 
     );
 }

class MyEv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CalculatorData();
  }
}




