import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Sign In"),
    );
  }
}
