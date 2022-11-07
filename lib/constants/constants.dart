import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/config/theme.dart';

const mainParagraph =
    "Access to accredited tutors, academic materials and SIWES placements. All in one app. Join the breej now!";
const aboutParagraph =
    "we provide access to accredited tutors, academic materials and SIWES placements. All in one app. Join the breej now!";

const publicKey = "FLWPUBK-d73b1078701eb0b31671456c0a0c4980-X";
const encryptionKey = "9d8661bb336939598f8e2dd1";

final kTextInputDecoration = InputDecoration(
    floatingLabelStyle: const TextStyle(
        color: AppColors.primaryColor, fontWeight: FontWeight.bold),
    focusColor: AppColors.primaryColor,
    hoverColor: AppColors.primaryColor,
    prefixIcon: const Icon(CupertinoIcons.person),
    prefixIconColor: AppColors.primaryColor,
    labelText: "Full name",
    labelStyle: const TextStyle(color: Colors.grey, fontSize: 14),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primaryColor, width: 1)),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      // borderSide: BorderSide(
      //   color: active, width: 1
      // )
    ));

const kInputTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

final kInputDecoration = InputDecoration(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    prefixIcon: const Icon(Icons.person),
    labelText: "Label text",
    hintText: "Hint text",
    labelStyle: const TextStyle(color: AppColors.primaryColor),
    hintStyle: const TextStyle(color: AppColors.subColor),
    border: OutlineInputBorder(
        gapPadding: 4, borderRadius: BorderRadius.circular(16)));
