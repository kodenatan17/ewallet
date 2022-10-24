import 'package:ewallet/shared/theme.dart';
import 'package:ewallet/ui/widgets/buttons.dart';
import 'package:ewallet/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            height: 100,
            margin: const EdgeInsets.only(
              top: 50,
              bottom: 50,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo_light.png'),
              ),
            ),
          ),
          Text(
            'Sign In &\nGrow Your Finance',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kDefaultPadding),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Email Input
                const CustomFormField(title: 'Email Address'),
                const SizedBox(
                  height: 10,
                ),
                const CustomFormField(
                  title: 'Password',
                  isPassword: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password',
                    style: blueTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomFilledButton(
                  title: 'Sign In',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context, "/home", (Route<dynamic> route) => false);
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          CustomTextButton(
            title: 'Create New Account',
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
          ),
        ],
      ),
    );
  }
}
