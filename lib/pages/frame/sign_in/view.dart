import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'controller.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  Widget _buildLogo(BuildContext context) {
    return Text(
      'bliss!',
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Theme
              .of(context)
              .colorScheme
              .primary,
          fontWeight: FontWeight.bold,
          fontSize: 28.sp),
    );
  }

  Widget _buildThirdPartyLogin(BuildContext context, String loginType,
      String assets) {
    return GestureDetector(
      child: Container(
        height: 44.h,
        margin: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: Theme
                .of(context)
                .colorScheme
                .onPrimary,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 1))
            ]),
        child: Container(
          child: Row(
            children: [
              assets == '' ? Container() : Image.asset(assets).paddingAll(10),
              Container(
                  child: Text("Login with $loginType",
                    style: Theme
                        .of(context)
                        .textTheme
                        .titleLarge,
                  ).paddingOnly(left: 30, right: 12, top: 12, bottom: 12)
              )

            ],
          ),
        ).paddingSymmetric(horizontal: 40),
      ),
      onTap: () {
        controller.handleSignIn(loginType);
      },
    );
  }

  Widget _buildSignup(BuildContext context) {
    return GestureDetector(
      child: Text("Sign up here",
          style: Theme
              .of(context)
              .textTheme
              .titleMedium?.copyWith(color: Theme.of(context).primaryColor)),
      onTap: (){
          print("Sign up clicked");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLogo(context),
              _buildThirdPartyLogin(
                  context, "Google", "assets/icons/google.png"),
              _buildThirdPartyLogin(
                  context, "Facebook", "assets/icons/facebook.png"),
              _buildThirdPartyLogin(context, "Apple", "assets/icons/apple.png"),

              Row(
                children: [
                  Expanded(child: Divider(height: 2.h, color: Colors.grey.withOpacity(.3))),
                  Text('  or  '),
                  Expanded(child: Divider(height: 2.h,  color: Colors.grey.withOpacity(.3)))
                ],
              ).paddingSymmetric(horizontal: 16, vertical: 24),
              _buildThirdPartyLogin(context, "phone number", ""),
              SizedBox(height: 28.h),
              Column(
                children: [
                  Text("Already have an account?", style: Theme
                      .of(context)
                      .textTheme
                      .titleMedium),
                  _buildSignup(context)
                ],
              )
            ],
          ),
        ));
  }


}
