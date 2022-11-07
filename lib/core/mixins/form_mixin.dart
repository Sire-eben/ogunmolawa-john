import 'package:flutter/material.dart';

mixin FormMixin<T extends StatefulWidget> on State<T> {
  final formKey = GlobalKey<FormState>();
  AutovalidateMode? autovalidateMode;

  void validate(VoidCallback callback, {VoidCallback? orElse}) {
    final formState = formKey.currentState;
    if (formState != null && formState.validate()) {
      FocusScope.of(context).unfocus();
      formState.save();
      callback();
    } else {
      setState(() {
        autovalidateMode = AutovalidateMode.onUserInteraction;
      });
      orElse?.call();
    }
  }
}
