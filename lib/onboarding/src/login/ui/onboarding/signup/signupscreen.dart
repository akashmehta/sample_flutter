import 'dart:ffi';

import 'package:flutter/material.dart';
import '../../../blocs/providers.dart';
import '../infowidgets.dart';

class SignUpScreen extends StatelessWidget {

  final VoidCallback backCallback;
  const SignUpScreen(Key key, this.backCallback) : super(key: key);

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
          altMobileField(bloc),
          aadharNumberField(bloc),
          dlField(bloc),
          spacing(),
          submitButton(() {
            backCallback.call();
          })
        ],
      ),
    );
  }


}