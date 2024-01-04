import 'package:bliss/common/store/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Global {
  static Future init() async{
    WidgetsFlutterBinding.ensureInitialized();
    Get.put<UserStore>(UserStore());
  }
}