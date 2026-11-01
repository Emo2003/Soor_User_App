
class OtpHelper {
  OtpHelper._();

  static const int otpLength = 5;

  static bool isOtpComplete(String otp) {
    return otp.length == otpLength;
  }

  static bool isOtpValid(String otp) {
    return RegExp(r'^\d{5}$').hasMatch(otp);
  }
}
