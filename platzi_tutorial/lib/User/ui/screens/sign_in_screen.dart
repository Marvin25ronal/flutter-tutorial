import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:platzi_tutorial/User/ui/widget/login_button.dart';
import 'package:platzi_tutorial/widgets/gradient_back.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final message = const Text(
    'Welcome to the app',
    style: TextStyle(
      fontSize: 30,
      fontFamily: 'Nunito',
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        
        children: [
          GradientBack('', MediaQuery.of(context).size.height),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              message,
              LoginButton(
                  text: 'Ingresar con gmail',
                  onPress: () => {},
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.05)
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return signInGoogleUI();
  }
}
