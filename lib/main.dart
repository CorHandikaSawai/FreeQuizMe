import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:free_quizme/firebase_options.dart';
import 'package:free_quizme/screens/create_card_screen.dart';
import 'package:free_quizme/screens/homepage_screen.dart';
import 'package:free_quizme/screens/login_user_screen.dart';
import 'package:free_quizme/screens/quiz_screen.dart';
import 'package:free_quizme/screens/register_user_screen.dart';
import 'package:free_quizme/services/auth_service.dart';
import 'package:free_quizme/services/card_service.dart';
import 'package:free_quizme/services/user_service.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CardService(),
        ),
        ChangeNotifierProvider(
          create: (_) => AuthenticationService(),
        ),
        ChangeNotifierProvider(
          create: (_) => UserService(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Free Quizme',
      theme: ThemeData.dark(),
      routes: {
        LoginUserScreen.routeName: (context) => const LoginUserScreen(),
        RegisterUserScreen.routeName: (context) => const RegisterUserScreen(),
      },
      home: const LoginUserScreen(),
    );
  }
}
