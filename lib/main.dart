import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lol_app/core/model/champion_model.dart';
import 'package:lol_app/core/service/champions_sevice.dart';
import 'package:lol_app/feature/home/view/home_view.dart';
import 'package:lol_app/feature/auth/view/login/welcome_page.dart';
import 'package:lol_app/feature/auth/view_model/auth_view_model.dart';
import 'package:lol_app/feature/home/viewModel/home_view_model.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => AuthViewModel(),
          ),
          ChangeNotifierProvider(
            create: (_) => HomeViewModel(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const WelcomePage(),
            '/homePage': (context) => const HomePageView(),
          },
        ));
  }
}
