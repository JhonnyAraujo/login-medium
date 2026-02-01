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
              Image.asset(
                key: ValueKey("imageMedium"),
                "assets/images/medium.png",
                height: 50,
                fit: BoxFit.contain,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    key: ValueKey("textTitle"),
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
                        child: Divider(
                          key: ValueKey("dividerLeft"),
                          thickness: 2,
                          color: Colors.black26,
                        ),
                      ),
                      Text(
                        "Or, sign up with",
                        style: TextStyle(color: Colors.black45),
                      ),
                      Expanded(
                        child: Divider(
                          key: ValueKey("dividerRight"),
                          thickness: 2,
                          color: Colors.black26,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Center(
                    child: IconButton.outlined(
                      key: ValueKey("buttonFacebook"),
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
