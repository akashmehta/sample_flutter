import 'package:flutter/material.dart';
import '../src/login/blocs/providers.dart';
import '../src/login/ui/onboarding/login/loginscreen.dart';

class App extends StatelessWidget {

  @override
  build(context) {
    return Provider(
      child: const MaterialApp(
        title: 'Log Me In',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
