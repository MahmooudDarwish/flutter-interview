import 'package:flutter/material.dart';
import 'package:flutter_interview/core/util/enums.dart';
import 'package:flutter_interview/core/util/string_constance.dart';
import 'package:fluttertoast/fluttertoast.dart';

abstract class UtilFunction {
  static String? validateField(String? value) {
    if (value!.isEmpty) {
      return "";
    }
    return null;
  }

  static Color _chooseToastColor({required ToastState state}) {
    Color color;
    switch (state) {
      case ToastState.error:
        color = Colors.red;
        break;
      case ToastState.success:
        color = Colors.green;
        break;
      case ToastState.warning:
        color = Colors.amber;
        break;
    }
    return color;
  }

  static void showToast(
          {required String? message, required ToastState state}) =>
      Fluttertoast.showToast(
          msg: message ?? StringConstance.defaultErrorMessage,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 5,
          backgroundColor: _chooseToastColor(state: state),
          textColor: Colors.white,
          fontSize: 16.0);
}
