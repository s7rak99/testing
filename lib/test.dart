import 'package:flutter/material.dart';
import 'package:testing/sign_in.dart';
import 'package:testing/sign_in_model.dart';

class TestLog extends StatefulWidget {
  const TestLog(SignInModel signIn ,{Key? key}) : super(key: key);

  @override
  State<TestLog> createState() => _TestLogState();
}

class _TestLogState extends State<TestLog> {

  SignIn signIn = SignIn(SignInModel('saharak@gmail.com' , '000000'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Test'),
      ),
      body: Center(
        child: TextButton(
          key: Key('button'),
          onPressed: (){
            setState(() {
              //SignIn signIn = SignIn(SignInModel('saharak@gmail.com' , '000000'));
             // signIn.login();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => NextPage()));

            });
          },
            child: const Text('press'),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build( context) {
    return  Scaffold(
      appBar: AppBar(),
    );
  }
}

