import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Task_Managment_App/UI/Auth/Sign_up/signup.dart';
import 'package:todo_app/Task_Managment_App/UI/Auth/Sing_in/signin_provider.dart';

import 'package:todo_app/Task_Managment_App/custum_widget/button.dart';
import 'package:todo_app/Task_Managment_App/custum_widget/colors.dart';

class Signin_Screen extends StatefulWidget {
  const Signin_Screen({super.key});

  @override
  State<Signin_Screen> createState() => _Signin_ScreenState();
}

class _Signin_ScreenState extends State<Signin_Screen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SigninProvider(),
      child: Consumer<SigninProvider>(
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            title: Text('SIGN IN'),
          ),
          body: Expanded(
            child: Container(
              height: double.infinity.h,
              width: double.infinity.w,
              decoration:
                  BoxDecoration(color: const Color.fromARGB(66, 224, 14, 14)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "WELLCOME BACK",
                      style: TextStyle(
                          fontSize: 25,
                          color: greenColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 80.h),
                    TextFormField(
                      controller: model.email,
                      decoration: InputDecoration(
                          hintText: "E-mail",
                          prefixIcon: Icon(Icons.email),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: model.password,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.password),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        model.SignIn(context);
                      },
                      child: MyButton(
                        title: "sign in",
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Text("Don't have an account ",
                              style:
                                  TextStyle(color: blackColor, fontSize: 15)),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignupScreen()));
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
