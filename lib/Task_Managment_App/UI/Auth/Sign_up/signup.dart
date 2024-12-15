import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Task_Managment_App/UI/Auth/Sign_up/signup_provider.dart';
import 'package:todo_app/Task_Managment_App/UI/Auth/Sing_in/signin.dart';
import 'package:todo_app/Task_Managment_App/custum_widget/button.dart';
import 'package:todo_app/Task_Managment_App/custum_widget/colors.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignupProvider(),
      child: Consumer<SignupProvider>(
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            title: Text('SIGN UP'),
          ),
          body: Container(
            height: double.infinity.h,
            width: double.infinity.w,
            decoration: BoxDecoration(
              color: Color.fromARGB(66, 224, 14, 14),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 25.h),
                  const Text(
                    "Let's Start\n Sign Up",
                    style: TextStyle(
                      fontSize: 25,
                      color: greenColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 50.h),
                  TextFormField(
                    controller: model.name,
                    decoration: InputDecoration(
                      hintText: "Name",
                      prefixIcon: Icon(Icons.person),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  TextFormField(
                    controller: model.email,
                    decoration: InputDecoration(
                      hintText: "E-mail",
                      prefixIcon: Icon(Icons.email),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  TextFormField(
                    controller: model.password,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.password),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  GestureDetector(
                    onTap: () {
                      model.SignUp(context);
                    },
                    child: MyButton(
                      title: "sign up",
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Already have an account ",
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 15,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signin_Screen(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
