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
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Image.asset("assets/images/medium.png", width: 100),
              Align(
                alignment: .center,
                child: SizedBox(
                  width: 45,
                  child: Image.asset("assets/images/medium.png"),
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Join Medium.",
                    style: TextStyle(fontSize: 42, fontFamily: "serif"),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  SocialButton(
                    key: ValueKey("signupGoogle"),
                    pathImage: "assets/images/google.png",
                    text: "Sign up with Google",
                  ),
                  SizedBox(height: 10),
                  SocialButton(
                    key: ValueKey("signupEmail"),
                    pathImage: "assets/images/email.png",
                    text: "Sign up with Email",
                  ),
                  SizedBox(height: 25),
                  Row(
                    spacing: 8,
                    children: [
                      Expanded(
                        key: ValueKey("dividerLeft"),
                        child: Divider(thickness: 2, color: Colors.black26),
                      ),
                      Text(
                        "Or, sign up with",
                        style: TextStyle(color: Colors.black45),
                      ),
                      Expanded(
                        key: ValueKey("dividerRight"),
                        child: Divider(thickness: 2, color: Colors.black26),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Center(
                    key: ValueKey("buttonFacebook"),
                    child: IconButton.outlined(
                      onPressed: () {},
                      padding: const EdgeInsets.all(15),
                      icon: Image.asset(
                        "assets/images/facebook.png",
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                  SizedBox(height: 35),
                  RichText(
                    textAlign: TextAlign.center,
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
                ],
              ),
              TermsAndsPrivacy(),
            ],
          ),
        ),
      ),
    );
  }
}
