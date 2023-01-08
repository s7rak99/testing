class SignInModel{
  String? email;
  String? password;
  String hello = 'Hello';

  SignInModel(this.email, this.password);


  String getHello(){
    return hello;
  }

}