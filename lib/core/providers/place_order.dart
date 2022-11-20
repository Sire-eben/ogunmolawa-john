import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ogunmolawa_john/core/routing/route_names.dart';
import 'package:ogunmolawa_john/core/services/navigation_service.dart';
import 'package:ogunmolawa_john/core/utils/utils.dart';
import 'package:ogunmolawa_john/locator.dart';
import 'package:http/http.dart' as http;

class PlaceOrderProvider with ChangeNotifier {
  final _firestore = FirebaseFirestore.instance;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

//CREATE NEW USER ACCOUNT METHOD
  Future<void> placeOrder(
    BuildContext context,
    String name,
    String email,
    String phone,
    String artName,
    String price,
    String dimension,
  ) async {
    try {
      _isLoading = true;
      notifyListeners();
      const serviceId = "service_p52odfu";
      const templateId = "template_y2wncoj";
      const userId = "y8jvXhfc8NTKlzrXr";

      final thisInstant = getTimestamp();
      final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode(
          {
            "service_id": serviceId,
            "template_id": templateId,
            "user_id": userId,
            'template_params': {
              'user_name': name,
              'user_email': email,
              'user_phone': phone,
              'price': price,
              'art_work': artName,
              'dimension': dimension,
            }
          },
        ),
      );

      await _firestore.collection("orders").doc(thisInstant).set({
        "name": name,
        "email": email,
        'user_phone': phone,
        'price': price,
        'art_work': artName,
        'dimension': dimension,
        'time': thisInstant,
      }).whenComplete(() {
        _isLoading = false;
        notifyListeners();
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            duration: Duration(seconds: 5),
            content: Text("Your Order has been placed and received ")));
      });
    } on FirebaseException catch (error) {
      _isLoading = false;
      notifyListeners();
      Fluttertoast.showToast(
          toastLength: Toast.LENGTH_LONG,
          timeInSecForIosWeb: 5,
          webShowClose: true,
          msg: 'Something went wrong. Try again');
    }
  }
}
