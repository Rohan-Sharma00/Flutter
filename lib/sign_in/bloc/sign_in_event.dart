abstract class signInEvent {}

class signInTextChangedEvent extends signInEvent {
  final String email;
  final String password;
  signInTextChangedEvent(this.email, this.password);
}

class signInSubmittedEvent extends signInEvent {
  final String email;
  final String password;
  signInSubmittedEvent(this.email, this.password);
}

