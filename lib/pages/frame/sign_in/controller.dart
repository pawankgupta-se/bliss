import 'package:bliss/common/entities/entities.dart';
import 'package:bliss/pages/frame/sign_in/state.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInController extends GetxController{
  SignInController();
  final state = SignInState();
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['openid']
  );

  Future<void> handleSignIn(String type) async {
    // 1. Email 2. Google, 3. Facebook, 4. Apple,  5. Phone,
    try{
      if(type == "phone number"){

      } else if(type == "Google") {
        print("Sign in with google.");
       var user =  await _googleSignIn.signIn();
       if(user != null){
         LoginRequestEntity loginRequestEntity = LoginRequestEntity();
         loginRequestEntity.name = user.displayName;
         loginRequestEntity.email = user.email;
         loginRequestEntity.open_id = user.id;
         loginRequestEntity.avatar = user.photoUrl?? "assets/icons/google.png";
         loginRequestEntity.type = 2;
       }

      } else if(type == "Facebook") {

      } else if(type == "Apple"){

      } else {
        print("Login type is not valid.");
      }


    }catch(e){
      print('Error with login. $e');
    }
  }
}