
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:testing/sign_in_model.dart';
import 'package:testing/dio.dart';
import 'package:testing/sign_in.dart';



class MockLogin extends Mock implements SignInModel{}

void main() {
  DioHelper.init();

 late  SignIn signIn;
 late MockLogin mockLogin;


  setUp(() {
   mockLogin = MockLogin();
    signIn = SignIn(mockLogin);

    // print(mockLogin.email);
  });

  // test('Successfully logged in user', () async {
  //   expect(
  //     await signIn.userLogin(email: 'sahak@gmail.com', password: '000000'),
  //     true,
  //   );
  // });

  // test('Successfully logged in user mock', () async {
  //   expect(
  //     await signIn.login(mockLogin),
  //     false,
  //   );
  // });


  //
  // test('Successfully logged in user verify', () async {
  //   when(() => mockLogin.getHello(),).thenReturn('Hello');
  // });
}