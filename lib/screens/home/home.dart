import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffeeshoppe/screens/authentication/authentication.dart';
import 'package:coffeeshoppe/shared/applicationloginstate.dart';
import 'package:coffeeshoppe/shared/applicationstate.dart';
import 'package:coffeeshoppe/shared/guestbook.dart';
import 'package:coffeeshoppe/shared/profilewrapper.dart';
import 'package:coffeeshoppe/shared/widgets.dart';
import 'package:coffeeshoppe/shared/yesnoselection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ApplicationState>(
        builder: (context, appState, _) => Scaffold(
              appBar: AppBar(
                title: Text('Alternate Universe: Coffee Shoppe'),
              ),
              body: ListView(
                children: <Widget>[
                  Image.asset('assets/codelab.png'),
                  SizedBox(height: 8),
                  //IconAndDetail(Icons.calendar_today, 'October 30'),
                  //IconAndDetail(Icons.location_city, 'San Francisco'),
                  ProfileWrapper(appState: appState),
                  Divider(
                    height: 8,
                    thickness: 1,
                    indent: 8,
                    endIndent: 8,
                    color: Colors.grey,
                  ),
                ],
              ),
              bottomNavigationBar: BottomAppBar(
                shape: CircularNotchedRectangle(),
                color: Colors.blue,
                child: IconTheme(
                  data: IconThemeData(
                      color: Theme.of(context).colorScheme.onPrimary),
                  child: Row(
                    children: [
                      IconButton(
                        tooltip: "My Books",
                        icon: const Icon(Icons.book),
                        onPressed: () {},
                      ),
                      IconButton(
                        tooltip: "Messages",
                        icon: const Icon(Icons.message_sharp),
                        onPressed: () {},
                      ),
                      const Spacer(),
                      IconButton(
                        tooltip: 'Open navigation menu',
                        icon: const Icon(Icons.settings),
                        onPressed: () {},
                      ),
                      IconButton(
                        tooltip: 'Open navigation menu',
                        icon: const Icon(Icons.logout),
                        onPressed: () {
                          appState.signOut();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ));
    /*return Scaffold(
      appBar: AppBar(
        title: Text('Alternate Universe: Coffee Shoppe'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset('assets/codelab.png'),
          SizedBox(height: 8),
          //IconAndDetail(Icons.calendar_today, 'October 30'),
          //IconAndDetail(Icons.location_city, 'San Francisco'),
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
          Divider(
            height: 8,
            thickness: 1,
            indent: 8,
            endIndent: 8,
            color: Colors.grey,
          ),

        ],
      ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.blue,
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: Row(
              children: [
                IconButton(
                  tooltip: "My Books",
                  icon: const Icon(Icons.book),
                  onPressed: () {},
                ),
                IconButton(
                  tooltip: "Messages",
                  icon: const Icon(Icons.message_sharp),
                  onPressed: () {},
                ),
                const Spacer(),
                IconButton(
                  tooltip: 'Open navigation menu',
                  icon: const Icon(Icons.settings),
                  onPressed: () {},
                ),
                IconButton(
                  tooltip: 'Open navigation menu',
                  icon: const Icon(Icons.logout),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      //floatingActionButton: FloatingActionButton(onPressed: null),
    );*/
  }
}
