
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import 'authentication_controller.dart';

abstract class SignInController extends GetxController {

  changeState();
  goToHomePage();
  goToSignUpPage();
  goToForgetPasswordPage();
  bool signIn();
  signInWithGoogle();
  Future loginWithEmailAndPassword(email, password);
}

class SignInControllerImpl extends SignInController {

  GlobalKey<FormState> emailState = GlobalKey<FormState>();
  GlobalKey<FormState> passwordState = GlobalKey<FormState>();
  bool passwordVisible = true;
  late TextEditingController email;
  late TextEditingController password;
  // MyServices myServices = Get.find();

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  changeState() {
    passwordVisible = !passwordVisible;
    update();
  }
  
  @override
  goToForgetPasswordPage() {
    Get.toNamed('/forgetPassword');
  }
  
  @override
  goToHomePage() {
    // print(GetAuthentication().user);
    Get.offAllNamed('/home');
    Get.deleteAll();
  }
  
  @override
  goToSignUpPage() {
    Get.toNamed('/signUp');
  }
  
  @override
  bool signIn() {
    var emailData = emailState.currentState;
    var passwordData = passwordState.currentState;
    if (emailData!.validate() && passwordData!.validate()){
      print('Valid');
      return true;
    }else {
      print('InValid');
      return false;
    }
  }
  
  @override
  signInWithGoogle() async{
    // await GetAuthentication().signInWithGoolge();
  }
  
  @override
  Future loginWithEmailAndPassword(email, password) async{
    // await GetAuthentication().loginWithEmailAndPassword(email, password);
  }

}