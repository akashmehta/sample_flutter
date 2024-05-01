import 'package:flutter/material.dart';
import 'package:sample_flutter/onboarding/src/login/ui/onboarding/signup/signupscreen.dart';
import 'login/loginscreen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      MaterialApp(
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(tabs: [
                Text("Sign Up"),
                Text("Login")
              ]),
            ),
            body: const TabBarView(children: [SignUpScreen(),
              LoginScreen()]),
          ),
        ),
      );
}