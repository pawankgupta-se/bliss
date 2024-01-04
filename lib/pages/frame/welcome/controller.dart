import 'package:bliss/common/routes/names.dart';
import 'package:bliss/pages/frame/welcome/state.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController{
  WelcomeController();
  final title = "bliss!";
  final state = WelcomeState();

  @override
  void onReady(){
    super.onReady();
    Future.delayed(const Duration(seconds: 3), () => Get.offAllNamed(AppRoutes.Message));
  }
}