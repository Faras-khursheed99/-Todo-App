import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/Task_Managment_App/UI/Auth/Sing_in/signin.dart';
import 'package:todo_app/Task_Managment_App/UI/Screens/home.dart';
import 'package:todo_app/Task_Managment_App/custum_widget/fluttertost.dart';

class SigninProvider extends ChangeNotifier {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  void SignIn(context) {
    auth
        .signInWithEmailAndPassword(
            email: email.text.toString(), password: password.text.toString())
        .then((v) {
      ToastPopUp().toast(v.user!.email.toString(), Colors.green, Colors.white);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
      email.clear();
      password.clear();
    }).onError((error, stackTrace) {
      debugPrint(error.toString());
      ToastPopUp().toast(error.toString(), Colors.red, Colors.white);
    });
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Signin_Screen()));
  }
}
