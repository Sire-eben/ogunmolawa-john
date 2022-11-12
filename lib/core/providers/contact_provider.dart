import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ogunmolawa_john/core/routing/route_names.dart';
import 'package:ogunmolawa_john/core/services/navigation_service.dart';
import 'package:ogunmolawa_john/core/utils/utils.dart';
import 'package:ogunmolawa_john/locator.dart';
import 'package:http/http.dart' as http;

class ContactProvider with ChangeNotifier {
  // FirebaseAuth auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  //SETTER
  bool _isLoading = false;

  // String url = "https://api.emailjs.com/api/v1.0/email/send";
//GETTER
  bool get isLoading => _isLoading;

//CREATE NEW USER ACCOUNT METHOD
  Future<void> sendMessage(
    BuildContext context,
    String name,
    String email,
    String subject,
    String message,
  ) async {
    try {
      _isLoading = true;
      notifyListeners();
      const serviceId = "service_p52odfu";
      const templateId = "template_2g91ubu";
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
              'user_message': message,
              'user_subject': subject,
            }
          },
        ),
      );

      await _firestore.collection("contact").doc(thisInstant).set({
        "name": name,
        "email": email,
        "subject": subject,
        "message": message,
        'time': thisInstant,
      }).whenComplete(() {
        _isLoading = false;
        notifyListeners();
        locator<NavigationService>().navigateTo(contactRoute);
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
