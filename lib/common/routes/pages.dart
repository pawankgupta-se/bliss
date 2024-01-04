import 'package:bliss/common/middlewares/router_auth.dart';
import 'package:bliss/pages/frame/welcome/index.dart';
import 'package:bliss/pages/message/index.dart';
import 'package:flutter/cupertino.dart';
import '../../pages/frame/sign_in/index.dart';
import 'names.dart';
import 'package:get/get.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static final RouteObserver<Route> observer = RouteObserver();
  static List<String> history = [];

  static final List<GetPage> routes = [

    GetPage(
        name: AppRoutes.INITIAL,
        page: () => const WelcomePage(),
        binding: WelcomeBinding()
    ),

    GetPage(
        name: AppRoutes.Message,
        page: () => const MessagePage(),
        binding: MessageBinding(),
      middlewares: [RouteAuthMiddleware(priority: 1)]
    ),

    GetPage(
        name: AppRoutes.SIGN_IN,
        page: () => const SignInPage(),
        binding: SignInBinding()
    ),

  ];
}

