import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modul_6/screens/sign_in_screen.dart';
import 'package:modul_6/screens/todo_screen.dart';
import '../services/auth/auth_services.dart';
import 'profile_screen.dart';


class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();
    return StreamBuilder(
        stream: _auth.authStateChanges,
        builder: (context, snapshot){
          if(snapshot.hasData){
            return TodoScreen();
          }else {
            return SignInScreen();
          }
        }
    );
  }
}
