import 'package:budget_app/constants/colors.dart';
import 'package:budget_app/pages/signin.page.dart';
import 'package:budget_app/utilities/app_logo.dart';
import 'package:budget_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: kGreenColor,
          height: height,
          padding: const EdgeInsets.all(32),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppLogo(
                  height: 176,
                  width: 176,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Budgeto",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 48,
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(
                  height: 64,
                ),
                const Text(
                  "Welcome to your money pocket \nto managing your budget.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kWhite,
                    decoration: TextDecoration.none,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                CustomButton(
                  btnColor: kWhite,
                  btnTextColor: kGreenColor,
                  btnText: "Get Started",
                  onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignInPage();
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  btnColor: kTransparent,
                  btnTextColor: kWhite,
                  borderColor: kWhite,
                  btnText: "Create new Account",
                  onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignInPage();
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
