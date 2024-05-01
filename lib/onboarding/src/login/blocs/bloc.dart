import 'dart:async';
import '../utils/validators.dart';

class Bloc extends Object with Validators {
  final _mobile = StreamController<String>();
  final _altMobile = StreamController<String>();
  final _aadhar = StreamController<String>();
  final _dl = StreamController<String>();
  final _otp = StreamController<String>();

  // add data to stream
  Function(String) get changeMobile => _mobile.sink.add;
  Function(String) get changeOtp => _otp.sink.add;
  Function(String) get changeAltMobile => _altMobile.sink.add;
  Function(String) get changeAadhar => _aadhar.sink.add;
  Function(String) get changeDl => _dl.sink.add;

  // retrieve data from stream
  Stream<String> get mobile => _mobile.stream.transform(validateMobile);
  Stream<String> get otp => _otp.stream.transform(validateOtp);
  Stream<String> get aadhar => _aadhar.stream.transform(validateAadhar);
  Stream<String> get dl => _dl.stream.transform(validateDl);
  Stream<String> get altMobile => _altMobile.stream.transform(validateMobile);

  void dispose() {
    _mobile.close();
    _altMobile.close();
    _aadhar.close();
    _dl.close();
    _otp.close();
  }
}
