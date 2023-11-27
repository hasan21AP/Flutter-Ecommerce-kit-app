import 'package:ecorommece_app_kit/core/middleware/my_middleware.dart';
import 'package:ecorommece_app_kit/view/screens/auth/forget_password_view.dart';
import 'package:ecorommece_app_kit/view/screens/auth/reset_password_view.dart';
import 'package:ecorommece_app_kit/view/screens/auth/sign_in_view.dart';
import 'package:ecorommece_app_kit/view/screens/auth/sign_up_view.dart';
import 'package:ecorommece_app_kit/view/screens/auth/verify_code_view.dart';
import 'package:ecorommece_app_kit/view/screens/home/home_view.dart';
import 'package:ecorommece_app_kit/view/screens/splash/splash_view.dart';
import 'package:get/get.dart';

import 'core/constants/routes.dart';

  List<GetPage<dynamic>> routes = [


    GetPage(name: AppRoutes.splash, page:() => const SplashView() , 
    middlewares: [MyMiddleware()]),

    GetPage(name: AppRoutes.signIn, page:() => const SignInView(), 
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 400)
    ),
    GetPage(name: AppRoutes.signUp, page:() => const SignUpView(), 
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 400)
    ),
    GetPage(name: AppRoutes.home, page:() => const HomeView(), 
    transition: Transition.fade, 
    transitionDuration: const Duration(milliseconds: 400)
    ),
    GetPage(name: AppRoutes.forgetPassword, page:() => const ForgetPasswordView(), 
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 400)
    ),
    GetPage(name: AppRoutes.verifyCode, page:() => const VerifyCodeView(), 
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 400)
    ),
    GetPage(name: AppRoutes.resetPassword, page:() => const ResetPasswordView(), 
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 400)
    ),
    
  ];