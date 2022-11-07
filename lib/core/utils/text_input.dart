import "package:flutter/services.dart";

class PhoneNumber {
  final String number;
  final String dialCode;

  const PhoneNumber({
    required this.number,
    required this.dialCode,
  });
}

class PhoneNumberCountry {
  final String name;
  final String shortName;
  final String countryCode;
  final String flag;
  final int maxLength;

  const PhoneNumberCountry({
    required this.name,
    required this.shortName,
    required this.countryCode,
    required this.flag,
    required this.maxLength,
  });
}


class DatePatternInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    final buffer = StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      buffer.write(newText[i]);
      final nonZeroIndex = i + 1;
      if ((nonZeroIndex == 2 || nonZeroIndex == 4) &&
          nonZeroIndex != newText.length) {
        buffer.write('/');
      }
    }
    final string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}
