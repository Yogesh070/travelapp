import 'package:go_router/go_router.dart';
import 'package:travel_app/splashpage/splashpage.dart';
import 'package:travel_app/onboardpage/onboard_pages.dart';
import 'package:travel_app/passwordreset/forgot_password.dart';
import 'package:travel_app/signinpage/signinpage.dart';
import 'package:travel_app/signuppage/signuppage.dart';

final GoRouter router = GoRouter(
  initialLocation: '/firstpage',
  routes: [
    GoRoute(
      path: '/firstpage',
      builder: (context, state) => SplashPage(),
    ),
    GoRoute(
      name: 'onboardingscreen',
      path: '/onboardpage',
      builder: (context, state) => OnboardingScreen(),
    ),
    GoRoute(
        name: 'signinpage',
        path: '/signinpage',
        builder: (context, state) => Signinpage()),
    GoRoute(
      name: 'signuppage',
      path: '/signuppage',
      builder: (context, state) => Signuppage(),
    ),
    GoRoute(
      path: '/passwordreset',
      name: 'forgotpassword',
      builder: (context, state) => ForgotPassword(),
    )
  ],
);
