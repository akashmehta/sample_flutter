import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../blocs/providers.dart';
import '../infowidgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of(context);
    final bloc = (provider as Provider).bloc;
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(20.0),
      child: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          mobileField(bloc),
          otpField(bloc),
          spacing(),
          buttonBar(context)
        ],
      ),
    );
  }

  Widget buttonBar(BuildContext context) {
    Widget loginButton = submitButton(() {

    });
    // Widget signUpButton = submitButton(() {
    //   backCallback() {
    //     Navigator.pop(context, SignUpScreen);
    //   }
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (BuildContext context) => SignUpScreen(const Key("SignUp"), backCallback)));
    // });
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        loginButton,
        // signUpButton
      ],
    );
  }
}