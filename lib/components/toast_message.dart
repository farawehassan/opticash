import 'package:fluttertoast/fluttertoast.dart';
import 'package:opticash/app/app_colors.dart';

class ToastMessage {
  /// This function shows success toast message using [Fluttertoast]
  static void success({required String message}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: AppColors.green,
      textColor: AppColors.white,
      fontSize: 16,
    );
  }

  /// This function shows error toast message using [Fluttertoast]
  static void error({required String message}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: AppColors.red,
      textColor: AppColors.white,
      fontSize: 16,
    );
  }
}
