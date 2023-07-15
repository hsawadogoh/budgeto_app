import 'package:budget_app/constants/colors.dart';
import 'package:budget_app/pages/bottom_nav_bar.dart';
import 'package:budget_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../utilities/app_logo.dart';
import '../widgets/custom_text_field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: kGreenColor,
          height: height,
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
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 30,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            'Log in\nto your account',
                            style: TextStyle(
                              color: kFontBlackC,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CustomTextField(
                            hint: 'Email',
                            iconName: Icons.alternate_email,
                            controller: emailController,
                            obscureText: false,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter Email';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CustomTextField(
                            hint: 'Password',
                            iconName: Icons.lock,
                            controller: passwordController,
                            obscureText: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter Password';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.visiblePassword,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CustomButton(
                            loading: false,
                            btnColor: Theme.of(context).primaryColor,
                            btnTextColor: kWhite,
                            btnText: 'Login',
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return const BottomNavBar();
                                  }),
                                );
                              }
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const Text(
                                'New to Budgeto ?',
                                style: TextStyle(
                                  color: kGrayTextC,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextButton(
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 16,
                                  ),
                                ),
                                onPressed: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) =>
                                  //         const SignupScreen(),
                                  //   ),
                                  // );
                                },
                              ),
                            ],
                          ),
                          TextButton(
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 16,
                              ),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) =>
                              //         const ForgotPassScreen(),
                              //   ),
                              // );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
