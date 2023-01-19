import 'package:flutter/material.dart';
import 'package:practice/general/helpers/shared_prefs.dart';
import '../../../general/constants/constants.dart';

class TokenScreen extends StatefulWidget {
  const TokenScreen({Key? key}) : super(key: key);

  @override
  State<TokenScreen> createState() => _TokenScreenState();
}

class _TokenScreenState extends State<TokenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Constants.authToken),
          ],
        ),
      ),
    );
  }
}
