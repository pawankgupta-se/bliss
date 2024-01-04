import 'package:get/get.dart';

class UserStore extends GetxController {
  static UserStore get to => Get.find();
  final _isLogin = false.obs;

  String token = '';

  final _profile = UserItem().obs;
  bool get isLogin => _isLogin.value;
  UserItem get profile => _profile.value;
  bool get hasToken => token.isNotEmpty;

  @override
  void onInit() {

  }
}

class UserItem {
}