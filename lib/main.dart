import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_clone/features/auth/screens/login_screen.dart';
import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:reddit_clone/firebase_options.dart';
import 'package:reddit_clone/homepage.dart';
import 'package:reddit_clone/loading.dart';
import 'package:reddit_clone/theme/pallete.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options : DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
          theme : Pallete.lightModeAppTheme,
        home : LoginScreen()
        // home: StreamBuilder<User?>(
        //   stream: FirebaseAuth.instance.authStateChanges(),
        //   builder : (BuildContext context, AsyncSnapshot snapshot)
        //   {
        //     if(snapshot.hasError)
        //       {
        //         return Text(snapshot.error.toString());
        //       }
        //
        //     if(snapshot.connectionState == ConnectionState.active)
        //       {
        //
        //         if(snapshot.data == null)
        //           {
        //             return LoginScreen();
        //           }
        //
        //           else {
        //             return HomePage();
        //         }
        //
        //
        //       }
        //
        //     return Loading();
        //   }
        // )

    );
  }
}
