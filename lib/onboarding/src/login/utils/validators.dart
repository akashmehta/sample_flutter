import 'dart:async';

mixin class Validators {
  final validateMobile = StreamTransformer<String, String>.fromHandlers(
    handleData: (mobile, sink) {
      if (mobile.trim().length == 10) {
        sink.add(mobile);
      } else {
        sink.addError('Enter valid number');
      }
    }
  );

  final validateOtp = StreamTransformer<String, String>.fromHandlers(
    handleData: (otp, sink) {
      if (otp.length == 6) {
        sink.add(otp);
      } else {
        sink.addError('Enter valid OTP');
      }
    }
  );

  final validateAadhar = StreamTransformer<String, String>.fromHandlers(
      handleData: (aadhar, sink) {
        if (aadhar.length == 12) {
          sink.add(aadhar);
        } else {
          sink.addError('Enter valid Aadhar Number');
        }
      }
  );

  final validateDl = StreamTransformer<String, String>.fromHandlers(
      handleData: (dl, sink) {
        if (dl.length == 7) {
          sink.add(dl);
        } else {
          sink.addError('Enter valid driving licence number.');
        }
      }
  );
}