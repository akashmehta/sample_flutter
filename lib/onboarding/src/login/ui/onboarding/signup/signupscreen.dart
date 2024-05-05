import 'package:flutter/material.dart';
import 'package:sample_flutter/onboarding/src/login/blocs/bloc.dart';
import '../infowidgets.dart';

class SignUpScreen extends StatelessWidget {

  final VoidCallback backCallback;
  final VoidCallback signUpCallBack;
  const SignUpScreen(Key key,
      this.backCallback,
      this.signUpCallBack) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = Bloc();
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: backCallback,),
        ),
        body: Container(
          margin: const EdgeInsets.all(20.0),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                mobileField(bloc),
                otpField(bloc),
                altMobileField(bloc),
                aadharNumberField(bloc),
                dlField(bloc),
                spacing(),
                submitButton("Back",() {
                  signUpCallBack.call();
                })
              ],
            ),
          ),
        ),
      ),
    );
  }


}