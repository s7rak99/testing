import 'package:flutter/material.dart';
import 'package:testing/sign_in.dart';
import 'package:testing/sign_in_model.dart';
import 'package:testing/test.dart';

import 'dio.dart';

void main() {
  DioHelper.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  SignInModel signIn = SignInModel('saharak@gmail.com' , '000000');
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      home:  TestLog(signIn),
    );
  }
}

//MyWidget(title: 'T', message: 'M'),
