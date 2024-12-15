import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/Task_Managment_App/UI/Screens/Todos_Screens/todoscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
      ),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        decoration: const BoxDecoration(
          color: Color.fromARGB(66, 224, 14, 14),
        ),
        child: Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              BlurryContainer(
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Todoscreen()));
                            },
                            child: Text("TODO's")))
                  ],
                )),
                blur: 5000,
                width: 200,
                height: 150,
                elevation: 100,
                color: const Color.fromARGB(0, 177, 108, 108),
                padding: const EdgeInsets.all(8),
                shadowColor: Colors.red,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              SizedBox(
                height: 10.h,
              ),
              BlurryContainer(
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child:
                            TextButton(onPressed: () {}, child: Text("PHOTOS")))
                  ],
                )),
                blur: 5000,
                width: 200,
                height: 150,
                elevation: 100,
                color: const Color.fromARGB(0, 177, 108, 108),
                shadowColor: Colors.black,
                padding: const EdgeInsets.all(8),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              SizedBox(
                height: 10.h,
              ),
              BlurryContainer(
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child:
                            TextButton(onPressed: () {}, child: Text("FILES")))
                  ],
                )),
                blur: 5000,
                width: 200,
                height: 150,
                elevation: 100,
                color: const Color.fromARGB(0, 177, 108, 108),
                shadowColor: Colors.red,
                padding: const EdgeInsets.all(8),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
