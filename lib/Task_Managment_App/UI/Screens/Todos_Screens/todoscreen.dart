import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:todo_app/Task_Managment_App/custum_widget/colors.dart';

class Todoscreen extends StatefulWidget {
  const Todoscreen({super.key});

  @override
  State<Todoscreen> createState() => _TodoscreenState();
}

class _TodoscreenState extends State<Todoscreen> {
  TextEditingController Title = TextEditingController();
  TextEditingController Description = TextEditingController();
  Widget buildButtomSheet(BuildContext context) {
    return Container(
      width: double.infinity.w,
      color: orangeColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Add Task",
              style: TextStyle(
                  color: blackColor, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.h,
            ),
            TextFormField(
              controller: Title,
              decoration: InputDecoration(
                hintText: "Title",
                prefixIcon: Icon(Icons.title),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              controller: Description,
              maxLines: 5,
              minLines: 3,
              decoration: InputDecoration(
                hintText: "Description",
                prefixIcon: Icon(Icons.description),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Add Task"))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TODO's"),
      ),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        decoration: BoxDecoration(
          color: Color.fromARGB(66, 224, 14, 14),
        ),
        child: Column(
          children: [
            FloatingActionButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context, builder: buildButtomSheet);
                },
                child: Icon(Icons.add_task))
          ],
        ),
      ),
    );
  }
}
