abstract class signInState{}

class signInValidState extends signInState{}

class signInInitialState extends signInState{}

class signInErrorState extends signInState{
  String errorMessage;
  signInErrorState(this.errorMessage);
}


