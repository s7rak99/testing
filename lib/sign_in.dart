
import 'package:testing/login_model.dart';
import 'package:testing/sign_in_model.dart';

import 'dio.dart';


class SignIn {

  LoginModel? loginModel;
  late bool check;

  SignInModel signInModel;


  SignIn(this.signInModel);

  Future<bool> userLogin({required String email, required String password}) async{
    await DioHelper.postData(
        url: 'login', data: {'email': email, 'password': password})
        .then((value) {
      print(value.data['status']);
      //print(value.statusCode);

      check =value.data['status'];

      loginModel = LoginModel.fromJson(value.data);
     print(loginModel!.status);

    }).catchError((err) {
      print(err.toString());

      // return false;
    });

     print(check);

    return check;

  }

  Future<bool> login(SignInModel signInModel) async{
    await DioHelper.postData(
        url: 'login', data: {'email': signInModel.email, 'password': signInModel.password})
        .then((value) {
      print(value.data['status']);
      //print(value.statusCode);

      check =value.data['status'];

      loginModel = LoginModel.fromJson(value.data);
      print(loginModel!.status);

    }).catchError((err) {
      print(err.toString());

      // return false;
    });

    print(check);

    return check;

  }




}
