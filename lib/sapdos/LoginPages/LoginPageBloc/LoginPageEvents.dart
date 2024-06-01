abstract class LoginPageEvents {}

class LoginPageEmailEvent extends LoginPageEvents {
  final String email;
  LoginPageEmailEvent(this.email);
}

class LoginPagePasswordEvent extends LoginPageEvents {
  final String password;
  LoginPagePasswordEvent(this.password);
}
