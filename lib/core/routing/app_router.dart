import 'package:etea/features/auth/ui/login/login_screen.dart';
import 'package:etea/features/auth/ui/register/sign_up_screen.dart';
import 'package:etea/features/onboarding/ui/onboarding_screen.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

class AppRouter{
 Route? onGenerateRoute(RouteSettings settings){
   switch(settings.name){

      case Routes.onboarding:
        return MaterialPageRoute(builder: (context) => const OnboardingScreen());
     case Routes.login:
       return MaterialPageRoute(builder: (context) => const LoginScreen());
     
     case Routes.signUp:
       return MaterialPageRoute(builder: (context) => const SignUpScreen());

      case Routes.forgotPassword:
        return MaterialPageRoute(builder: (context) => const Placeholder());

      case Routes.home:
        return MaterialPageRoute(builder: (context) => const Placeholder());
      
      case Routes.profile:
        return MaterialPageRoute(builder: (context) => const Placeholder());
      
      case Routes.settings:
        return MaterialPageRoute(builder: (context) => const Placeholder());

       case Routes.editProfile:
        return MaterialPageRoute(builder: (context) => const Placeholder());        
     default:
       return null;
   }
 }
}