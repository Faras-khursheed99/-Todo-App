import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/Task_Managment_App/UI/Auth/Sing_in/signin.dart';
import 'package:todo_app/Task_Managment_App/custum_widget/fluttertost.dart';

class SignupProvider extends ChangeNotifier {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  bool isloading = true;
  void SignUp(context) {
    auth
        .createUserWithEmailAndPassword(
      email: email.text.toString(),
      password: password.text.toString(),
    )
        .then((v) {
      ToastPopUp().toast(
        'Sign Up successful',
        Colors.green,
        Colors.white,
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Signin_Screen(),
        ),
      );
      name.clear();
      email.clear();
      password.clear();
    }).onError((error, v) {
      ToastPopUp().toast(
        error.toString(),
        Colors.red,
        Colors.green,
      );
    });
  }
}
