
// import 'package:ecorommece_app_kit/controller/auth/authentication_controller.dart';
// import 'package:ecorommece_app_kit/firebase_options.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'core/constants/colors.dart';
import 'core/services/services.dart';
import 'core/utils/size_config.dart';
import 'routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform
  //   );
  await initalServices();
  // FirebaseAppCheck firebaseAppCheck = FirebaseAppCheck.instance;
  // firebaseAppCheck.activate(
  //   androidProvider: AndroidProvider.playIntegrity
  // );
  // await firebaseAppCheck.setTokenAutoRefreshEnabled(true);
  runApp(
    const ECorommeceAppKit());

}
class ECorommeceAppKit extends StatelessWidget {
  const ECorommeceAppKit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // GetAuthentication();
    SizeConfig().init(context);
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          displayLarge:  TextStyle(
              color: AppColors.kDisplayLargeColor,
              fontSize: 16,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.50,
            ),
          displayMedium: TextStyle(
                  color: AppColors.kGrayColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.07,
                ),
          displaySmall: TextStyle(
                color: AppColors.kGrayColor,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.50,
            ),
        ),
      ),
      initialRoute: '/',
      getPages: routes,
    );
  }
}
