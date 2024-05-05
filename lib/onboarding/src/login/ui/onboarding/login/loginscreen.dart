import 'package:flutter/material.dart';
import 'package:sample_flutter/onboarding/src/login/blocs/bloc.dart';
import 'package:sample_flutter/onboarding/src/login/ui/onboarding/signup/signupscreen.dart';
import '../infowidgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = Bloc();
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          mobileField(bloc),
          otpField(bloc),
          spacing(),
          buttonBar(context, bloc)
        ],
      ),
    );
  }

  Widget buttonBar(BuildContext context, Bloc bloc) {
    Widget loginButton = submitButton("Login", () {});
    Widget signUpButton = submitButton("Sign Up", () {
      bloc.dispose();
      backCallback() {
        Navigator.pop(context, SignUpScreen);
      }

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => SignUpScreen(
                  const Key("SignUp"), backCallback, backCallback)));
    });
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [loginButton, signUpButton],
    );
  }
}
