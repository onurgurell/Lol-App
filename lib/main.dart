import 'package:flutter/material.dart';
import 'package:lol_app/view/login/welcome_page.dart';
import 'package:lol_app/view_model/home_view_model.dart';
import 'package:provider/provider.dart';

import 'view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: ((context) => const HomePageView())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => WelcomePage(),
        },
      ),
    );
  }
}
