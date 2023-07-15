import 'dart:developer';

import 'package:budget_app/bloc/theme.bloc.dart';
import 'package:budget_app/constants/colors.dart';
import 'package:budget_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../widgets/profile_tab.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Profile",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: Container(
                    height: 128,
                    width: 128,
                    decoration: BoxDecoration(
                      color: kCardColor,
                      borderRadius: BorderRadius.circular(75),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: kGrayTextC,
                      size: 90,
                    ),
                  ),
                ),
                const ProfileTab(
                  title: 'Full Name',
                  iconName: Icons.person,
                  titleValue: "SAWADOGO Hubert",
                ),
                const ProfileTab(
                  title: 'Phone number',
                  iconName: Icons.call,
                  titleValue: "73883940",
                ),
                const ProfileTab(
                  title: 'Bank account number',
                  iconName: Icons.account_balance,
                  titleValue: "0987654321",
                ),
                const ProfileTab(
                  title: 'KYC number',
                  iconName: Icons.person,
                  titleValue: "160",
                ),
                const ProfileTab(
                  title: 'Age',
                  iconName: Icons.person,
                  titleValue: "27",
                ),
                const ProfileTab(
                  title: 'Income Range',
                  iconName: Icons.currency_rupee,
                  titleValue: "200K - 800K",
                ),
                Row(
                  children: [
                    const Text(
                      'Dark Mode',
                      style: TextStyle(fontSize: 18),
                    ),
                    const Spacer(),
                    BlocBuilder<ThemeBloc, ThemeStates>(
                      builder: (context, state) {
                        late bool changeTheme = false;
                        if (state is ChangeThemeState) {
                          changeTheme = state.enableDarkTheme;
                        }
                        return themeSwitch(context, changeTheme);
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomButton(
                  btnColor: Theme.of(context).primaryColor,
                  btnTextColor: kWhite,
                  btnText: "Sign out",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  btnColor: Theme.of(context).primaryColor,
                  btnTextColor: kWhite,
                  btnText: "Reset Password",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  FlutterSwitch themeSwitch(BuildContext context, bool changeTheme) {
    return FlutterSwitch(
      width: 50,
      height: 30,
      padding: 0,
      activeToggleColor: kDarkCardC,
      inactiveToggleColor: Theme.of(context).primaryColor,
      activeSwitchBorder: Border.all(
        color: kDarkGreenBackC,
        width: 4,
      ),
      inactiveSwitchBorder: Border.all(
        color: kTextFieldBorderC,
        width: 4,
      ),
      activeColor: kDarkGreenColor,
      inactiveColor: kTextFieldColor,
      activeIcon: Icon(
        Icons.nightlight_round,
        color: Theme.of(context).primaryColor,
      ),
      inactiveIcon: const Icon(
        Icons.wb_sunny,
        color: kTextFieldColor,
      ),
      value: changeTheme,
      onToggle: (value) {
        context.read<ThemeBloc>().add(
              ChangeThemeEvent(
                enableDarkTheme: value,
              ),
            );
      },
    );
  }
}
