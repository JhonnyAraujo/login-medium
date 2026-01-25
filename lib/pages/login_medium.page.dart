import 'package:flutter/material.dart';
import 'package:login_medium/widgets/social_button.widget.dart';

class LoginMediumPage extends StatelessWidget {
  const LoginMediumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 60, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/medium.png", width: 60, height: 60),
              const Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Join Medium.",
                    style: TextStyle(fontSize: 50),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SocialButton(
                pathImage: "assets/images/google.png",
                text: "Sign up with Google",
              ),
              SizedBox(height: 15),
              SocialButton(
                pathImage: "assets/images/email.png",
                text: "Sign up with Google",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
