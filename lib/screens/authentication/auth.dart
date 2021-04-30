import 'package:coffeeshoppe/shared/applicationstate.dart';
import 'package:coffeeshoppe/shared/constants.dart';
import 'package:coffeeshoppe/shared/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authentication.dart';

class AuthForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(APP_TITLE),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset('assets/codelab.png'),
            SizedBox(height: 8),
            IconAndDetail(Icons.calendar_today, 'October 30'),
            IconAndDetail(Icons.location_city, 'San Francisco'),
            Consumer<ApplicationState>(
              builder: (context, appState, _) => Authentication(
                email: appState.email,
                loginState: appState.loginState,
                startLoginFlow: appState.startLoginFlow,
                verifyEmail: appState.verifyEmail,
                signInWithEmailAndPassword: appState.signInWithEmailAndPassword,
                cancelRegistration: appState.cancelRegistration,
                registerAccount: appState.registerAccount,
                signOut: appState.signOut,
              ),
            ),
          ],
        ));
  }
}
