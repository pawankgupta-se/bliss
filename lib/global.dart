import 'package:bliss/common/services/Services.dart';
import 'package:bliss/common/store/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Global {
  static Future init() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Get.putAsync<StorageService>(() => StorageService().init());
    Get.put<UserStore>(UserStore());
  }
}