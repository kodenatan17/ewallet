import 'package:flutter/material.dart';

import '../../../shared/theme.dart';
import '../../widgets/buttons.dart';

class RegisterUploadIdcardPage extends StatelessWidget {
  const RegisterUploadIdcardPage({Key? key}) : super(key: key);

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
            'Verify Your\nAccount',
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Email Input
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: lightBackgroundColor,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/ico_upload.png',
                      width: 32,
                    ),
                  ),
                ),
                // Container(
                //   width: 120,
                //   height: 120,
                //   decoration: const BoxDecoration(
                //     shape: BoxShape.circle,
                //     image: DecorationImage(
                //       image: AssetImage('assets/ico_default.png'),
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Passport/ID Card',
                  style:
                      blackTextStyle.copyWith(fontSize: 18, fontWeight: medium),
                ),
                const SizedBox(
                  height: kDefaultMargin * 2,
                ),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextButton(
            title: 'Skip For Now',
            onPressed: () {
              Navigator.pushNamed(context, '/register-success');
            },
          ),
        ],
      ),
    );
  }
}
