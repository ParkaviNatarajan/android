import 'dart:async';

class ValidationMixin {
  final validatorEmail = StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (!email.contains('@')) {
      sink.addError('Please Enter Valid Email');
    } else if (email.contains(' ')) {
      sink.addError('Please Enter Valid Email');
    } else {
      sink.add(email);
    }
  });
  final validatorPassword =
      StreamTransformer<String, String>.fromHandlers(handleData: (password, sink1) {
    if (password.length < 1) {
      sink1.addError('Please Enter Valid password');
    } else {
      sink1.add(password);
    }
  });
  final validatorNumber =
      StreamTransformer<String, String>.fromHandlers(handleData: (number, sink1) {
    if (number.length > 10) {
      sink1.addError('Please Enter Valid number');
    } else {
      sink1.add(number);
    }
  });
  final validatorOtp = StreamTransformer<String, String>.fromHandlers(handleData: (number, sink1) {
    if (!number.contains(RegExp(r'[0-9]'))) {
      sink1.addError('Please Enter Valid OTP');
    } else {
      if (number.length > 4) {
        sink1.addError('Please Enter Valid OTP');
      } else {
        sink1.add(number);
      }
    }
  });
}
