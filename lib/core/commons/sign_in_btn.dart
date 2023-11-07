import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:reddit_clone/core/constants/constants.dart';
import 'package:reddit_clone/features/auth/controller/auth_controller.dart';
import 'package:reddit_clone/theme/pallete.dart';

class SignInBtn extends ConsumerWidget {
  const SignInBtn({super.key});

  void signInWithGoogle(WidgetRef ref){
    ref.read(authControllerProvider).signInWithGoogle();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton.icon(onPressed: (){
      signInWithGoogle(ref);
    },
        icon: Image.asset(constants.googleKaPath, height: 30),
        label: Text('Login Using Google', style : TextStyle(color: Colors.black)),
      style: ElevatedButton.styleFrom(backgroundColor: Pallete.whiteColor),
    );
  }




}
