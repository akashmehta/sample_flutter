import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../blocs/bloc.dart';

Widget dlField(Bloc bloc) => StreamBuilder(stream: bloc.dl,
    builder: (context, snapshot) => TextField(
      onChanged: bloc.changeDl,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: '1234567',
          labelText: 'Driving Licence Number',
          errorText: snapshot.error as String?
      ),
    ));

Widget aadharNumberField(Bloc bloc) => StreamBuilder(stream: bloc.aadhar,
    builder: (context, snapshot) => TextField(
      onChanged: bloc.changeAadhar,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: '111122223333',
          labelText: 'Aadhar Number',
          errorText: snapshot.error as String?
      ),
    ));

Widget altMobileField(Bloc bloc) => StreamBuilder(stream: bloc.altMobile,
    builder: (context, snapshot) => TextField(
      onChanged: bloc.changeAltMobile,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: '1234567890',
          labelText: 'Alternative Mobile Number',
          errorText: snapshot.error as String?
      ),
    ));

Widget mobileField(Bloc bloc) => StreamBuilder(stream: bloc.mobile,
    builder: (context, snapshot) => TextField(
      onChanged: bloc.changeMobile,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          hintText: '1234567890',
          labelText: 'Mobile Number',
          errorText: snapshot.error as String?
      ),
    ));

Widget otpField(Bloc bloc) => StreamBuilder(
    stream: bloc.otp,
    builder: (context, snapshot) => TextField(
      onChanged: bloc.changeOtp,
      obscureText: true,
      decoration:
      InputDecoration(
          hintText: 'OTP',
          labelText: 'OTP',
          errorText: snapshot.error as String?
      ),
    ));

Widget submitButton(VoidCallback callback) {
  return ElevatedButton(
    onPressed: () {
      callback.call();
    },
    style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue)),
    child: const Text(
      'Login',
      style: TextStyle(color: Colors.white),
    ),
  );
}

Widget spacing() {
  return Container(margin: const EdgeInsets.only(top: 25.0),);
}