import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/apps/cart/providers/auth_provider.dart';
import 'package:practice/apps/cart/providers/firebase_notifier.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  AuthNotifier authNotifier = AuthNotifier();
  FirebaseNotifier firebaseNotifier = FirebaseNotifier();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseMessaging.instance.getToken().then((value){
      print("firebase token : $value");
      firebaseNotifier.tokenPass(value!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('login'), elevation: 0),
      body: Form(
        key: _globalKey,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              TextFormField(controller: emailController),
              const SizedBox(height: 25),
              TextFormField(controller: passwordController),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () async {
                  authNotifier.login(
                      emailController.text, passwordController.text);
                  // _signIn(context);
                },
                child: const Text('submit'),
              ),

              const SizedBox(height: 30),


            ],
          ),
        ),
      ),
    );
  }
}
