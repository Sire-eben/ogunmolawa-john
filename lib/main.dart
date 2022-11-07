import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/constants/strings.dart';

import 'core/routing/route_names.dart';
import 'core/routing/router.dart';
import 'core/services/navigation_service.dart';
import 'locator.dart';
import 'views/layout_template/layout_template.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyA0TXEhc8JRYCe6y84xcsP8ndlqeGSPRIQ",
      authDomain: "ogunmola-john.firebaseapp.com",
      projectId: "ogunmola-john",
      storageBucket: "ogunmola-john.appspot.com",
      messagingSenderId: "349048718143",
      appId: "1:349048718143:web:f6bcde3143d0dcdd1e098a",
      measurementId: "G-3JD4KFHWPX",
    ),
  );
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: webTitle,
      theme: AppTheme.defaultTheme(context),
      builder: (context, child) => LayoutTemplate(child: child!),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: homeRoute,
    );
  }
}
