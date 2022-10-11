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
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  final LolService _lolService = LolService();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          FutureProvider<List<Champion>>(
            create: (context) => _lolService.fetchChampions(),
          ),
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
            '/': (context) => WelcomePage(),
            '/homePage': (context) => HomePageView(),
          },
        ));
  }
}
