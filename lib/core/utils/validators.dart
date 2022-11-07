import 'package:ogunmolawa_john/core/utils/extensions.dart';

class Validators {
  static String? Function(String?) validatePhoneNumber({int maxLength = 10}) {
    return (String? value) {
      value = harmonize(value);
      final regex = RegExp(r"^[0-9]");
      if (value.isEmpty || !regex.hasMatch(value)) {
        return "please enter a valid phone number";
      }
      if (value.length < maxLength) {
        return "Phone number must be an $maxLength characters digits";
      }
      return null;
    };
  }

  static String? validateBvn(String? value) {
    const Pattern pattern = r"^\d{11}$";
    final regex = RegExp(pattern.toString());
    value = harmonize(value);
    if (value.isEmpty || !regex.hasMatch(value)) {
      return "please enter a valid bvn number";
    }
    return null;
  }

  static String? validateEmail(String? value) {
    const Pattern emailPattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    final regex = RegExp(emailPattern.toString());
    value = harmonize(value);
    if (value.isEmpty || !regex.hasMatch(value)) {
      return "Invalid email address";
    }
    return null;
  }

  static String? Function(String?) validateString(
      {int minLength = 1, int? maxLength, String? error}) {
    return (String? value) {
      value = harmonize(value);

      if (value.isEmpty && value.length < minLength) {
        return error ?? "Field is required.";
      }

      if (maxLength != null) {
        if (minLength == maxLength && value.length != minLength) {
          return "Field must be $minLength characters";
        }
        if (value.length < minLength || value.length > maxLength) {
          return "Field must be $minLength-$maxLength characters";
        }
      }
      if (value.length < minLength) {
        return "Field must have a minimum of $minLength characters";
      }
      if (maxLength != null && value.length < maxLength) {
        return "Field must not have more than $maxLength characters";
      }
      return null;
    };
  }

  // static String? validateDate(String? value) {
  //   const error = "Field must be a valid date";
  //   value = harmonize(value);
  //   if (value.isEmpty) {
  //     return "Field is required.";
  //   }
  //   if (value.length != 10) {
  //     return error;
  //   }
  //   final day = value.substring(0, 2).toInt();
  //   final month = value.substring(3, 5).toInt();
  //   final year = value.substring(6, 10).toInt();
  //   if (day == -1 ||
  //       month == -1 ||
  //       year == -1 ||
  //       day > 31 ||
  //       month > 12 ||
  //       year < 1900) {
  //     return error;
  //   }
  //   return null;
  // }

  static String? Function(String?) validatePassword({int minLength = 8}) {
    return (String? value) {
      value = harmonize(value);

      if (value.isEmpty) {
        return "Password is required";
      }
      if (value.length < minLength) {
        return "Password must be at least $minLength characters";
      }
      return null;
    };
  }

  static String? Function(String?) validateAmount(
      [double? minAmount, String? error]) {
    return (String? value) {
      value = harmonize(value);
      if (value.isEmpty) {
        return error ?? "Amount is required.";
      }

      final amount = double.tryParse(value);
      if (amount == null) {
        return error ?? "Invalid Amount.";
      }

      if (minAmount != null && amount < minAmount) {
        return error ??
            "Amount can't be less than ${minAmount.toInt().inNaira}";
      }

      return null;
    };
  }

  static String harmonize(String? value) =>
      value == null ? "" : value.replaceAll(",", "").trim();
}
