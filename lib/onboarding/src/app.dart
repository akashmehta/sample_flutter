import 'package:flutter/material.dart';
import 'package:sample_flutter/onboarding/src/login/blocs/providers.dart';
import 'package:sample_flutter/onboarding/src/login/ui/onboarding/onboardingscreen.dart';

class App extends StatelessWidget {

  @override
  build(context) {
    return Provider(
        child: const MaterialApp(
          title: 'Log Me In',
          home: Scaffold(
            body: OnBoardingScreen(),
          ),
        ),
    );
  }
}
