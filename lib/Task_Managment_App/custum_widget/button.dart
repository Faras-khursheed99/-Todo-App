import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  final String title;
  final bool loading;

  const MyButton({super.key, required this.title, this.loading = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40.h,
        width: 200.w,
        decoration: BoxDecoration(color: Colors.green),
        child: Center(
          child: loading
              ? const CircularProgressIndicator(
                  color: Colors.white70,
                )
              : Text(title),
        ));
  }
}
