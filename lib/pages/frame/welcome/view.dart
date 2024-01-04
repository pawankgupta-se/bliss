import 'package:bliss/pages/frame/welcome/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  Widget _buildPageHeadTitle(String title){
    return Container(
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.bold,
            fontSize: 42.sp
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        alignment: Alignment.center,
        child: _buildPageHeadTitle(controller.title),
      ),
    );
  }
}
