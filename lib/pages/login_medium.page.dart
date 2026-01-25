import 'package:flutter/material.dart';
import 'package:login_medium/widgets/social_button.widget.dart';
import 'package:login_medium/widgets/terms_ands_privacy.widget.dart';

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
              SizedBox(height: 10),
              SocialButton(
                pathImage: "assets/images/email.png",
                text: "Sign up with Email",
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.black)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Or, sign up with"),
                  ),
                  Expanded(child: Divider(color: Colors.black)),
                ],
              ),
              SizedBox(height: 40),
              Center(
                child: SocialButton(pathImage: "assets/images/facebook.png"),
              ),
              SizedBox(height: 40),
              RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: "Sign in",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              TermsAndsPrivacy(),
            ],
          ),
        ),
      ),
    );
  }
}
