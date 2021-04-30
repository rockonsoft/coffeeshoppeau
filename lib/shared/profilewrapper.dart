import 'package:coffeeshoppe/screens/authentication/auth.dart';
import 'package:coffeeshoppe/screens/authentication/authentication.dart';
import 'package:coffeeshoppe/screens/home/home.dart';
import 'package:coffeeshoppe/shared/applicationloginstate.dart';
import 'package:coffeeshoppe/shared/applicationstate.dart';
import 'package:flutter/material.dart';

class ProfileWrapper extends StatelessWidget {
  final ApplicationState appState;
  ProfileWrapper({required this.appState});

  @override
  Widget build(BuildContext context) {
    // return either the Home or Authenticate widget
    if (appState.loginState != ApplicationLoginState.loggedIn) {
      /*return Authentication(
        email: appState.email,
        loginState: appState.loginState,
        startLoginFlow: appState.startLoginFlow,
        verifyEmail: appState.verifyEmail,
        signInWithEmailAndPassword: appState.signInWithEmailAndPassword,
        cancelRegistration: appState.cancelRegistration,
        registerAccount: appState.registerAccount,
        signOut: appState.signOut,
      );*/
      return AuthForm();
    } else {
      //is logged in - is profile complete
      /*if((appState.profile?.genres?.length ?? 0) < 5){
        return ChooseGenres()

      }*/
    }
    return HomePage();
  }
}
