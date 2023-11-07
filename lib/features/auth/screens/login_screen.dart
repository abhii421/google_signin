import 'package:flutter/material.dart';
import 'package:reddit_clone/core/commons/sign_in_btn.dart';
//import 'package:reddit_clone/core/commons/sign_in_btn.dart';
import 'package:reddit_clone/core/constants/constants.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Image.asset(constants.logoKaPath, height : 45),
      centerTitle: true,
        actions: [
          TextButton(onPressed: (){}, child: Text('Skip')
          )
        ],
      ),

      body : Column(
        children: [
          SizedBox(height : 40),

          Image.asset(constants.loginEmoteKaPath),

          SizedBox(height : 35),

          SignInBtn()
          // ElevatedButton(onPressed: (){
          //   //signInWithGoogle();
          // }, child: Text('Google Sign In')
          // )

        ],
      )
    );
  }


  // signInWithGoogle()async {
  //
  //   GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //
  //   GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
  //
  //   AuthCredential credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth?.accessToken,
  //       idToken: googleAuth?.idToken
  //   );
  //
  //   UserCredential userkaCredential  = await FirebaseAuth.instance.signInWithCredential(credential);
  //
  //   print(userkaCredential.user?.displayName);
  //   //print(userkaCredential.user?.displayName);
  // }


}
