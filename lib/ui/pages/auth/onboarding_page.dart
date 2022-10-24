import 'package:carousel_slider/carousel_slider.dart';
import 'package:ewallet/shared/theme.dart';
import 'package:ewallet/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> title = [
    'Grow Your\nFinancial Today',
    'Build From\nZero to Freedom',
    'Start Together',
  ];

  List<String> subTitle = [
    'Our system is helping you to\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too',
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/onboarding1.png',
                  height: height / 2.5,
                ),
                Image.asset(
                  'assets/onboarding2.png',
                  height: height / 2.5,
                ),
                Image.asset(
                  'assets/onboarding3.png',
                  height: height / 2.5,
                ),
              ],
              options: CarouselOptions(
                height: height / 2.5,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              carouselController: carouselController,
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: kDefaultMargin,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
                vertical: kDefaultPadding,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(kDefaultPadding),
              ),
              child: Column(
                children: [
                  Text(
                    title[currentIndex],
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  Text(
                    subTitle[currentIndex],
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: currentIndex == 2 ? 30 : 50,
                  ),
                  currentIndex == 2
                      ? Column(
                          children: [
                            CustomFilledButton(
                              title: 'Get Started',
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    "/register", (Route<dynamic> route) => false);
                              },
                            ),
                            const SizedBox(
                              height: kDefaultMargin,
                            ),
                            CustomTextButton(
                              title: 'Sign In',
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    "/login", (Route<dynamic> route) => false);
                              },
                            )
                          ],
                        )
                      : Row(
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              margin: const EdgeInsets.only(
                                right: kDefaultMargin * .5,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 0
                                    ? blueColor
                                    : lightBackgroundColor,
                              ),
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              margin: const EdgeInsets.only(
                                right: kDefaultMargin * .5,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 1
                                    ? blueColor
                                    : lightBackgroundColor,
                              ),
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              margin: const EdgeInsets.only(
                                right: kDefaultMargin * .5,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 2
                                    ? blueColor
                                    : lightBackgroundColor,
                              ),
                            ),
                            const Spacer(),
                            CustomFilledButton(
                              width: 150,
                              height: 50,
                              title: 'Continue',
                              onPressed: () {
                                carouselController.nextPage(
                                  curve: Curves.easeIn,
                                );
                              },
                            ),
                          ],
                        ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
