import 'package:ewallet/shared/theme.dart';
import 'package:ewallet/ui/widgets/home_latest_transaction_item.dart';
import 'package:ewallet/ui/widgets/home_services_item.dart';
import 'package:ewallet/ui/widgets/home_tips_item.dart';
import 'package:ewallet/ui/widgets/home_users_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          elevation: 0,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle:
              blueTextStyle.copyWith(fontSize: 10, fontWeight: medium),
          unselectedLabelStyle:
              blackTextStyle.copyWith(fontSize: 10, fontWeight: medium),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ico_nav_overview.png',
                width: kDefaultMargin,
                color: blueColor,
              ),
              label: 'Overview',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ico_nav_history.png',
                width: kDefaultMargin,
              ),
              label: 'Overview',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ico_nav_statistic.png',
                width: kDefaultMargin,
              ),
              label: 'Overview',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ico_nav_reward.png',
                width: kDefaultMargin,
              ),
              label: 'Overview',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset(
          'assets/ico_nav_plus.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        children: [
          profileSection(),
          walletCardSection(context),
          levelSection(),
          servicesSection(),
          latestTransactionSection(),
          sendAgainSection(),
          tipsSection(),
        ],
      ),
    );
  }

  Widget profileSection() {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding * 1.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/ico_default.png'),
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: whiteColor,
                ),
                child: Center(
                  child: Icon(
                    Icons.check_circle,
                    color: greenColor,
                    size: 14,
                  ),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Howdy',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'shayhanan',
                style:
                    blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget walletCardSection(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 3,
      margin: const EdgeInsets.only(top: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultCircular * .5),
        image: const DecorationImage(
            image: AssetImage('assets/ico_card.png'), fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shayna Hanna',
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            '**** **** **** 1280',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
              letterSpacing: 8,
            ),
          ),
          const SizedBox(
            height: kDefaultPadding * 1.5,
          ),
          Text(
            'Balance',
            style: whiteTextStyle,
          ),
          Text(
            'Rp. 12.500',
            style: whiteTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
          ),
        ],
      ),
    );
  }

  Widget levelSection() {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultMargin),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultPadding),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Level 1',
                style: blackTextStyle.copyWith(fontWeight: medium),
              ),
              const Spacer(),
              Text(
                '55%',
                style: greenTextStyle.copyWith(fontWeight: semiBold),
              ),
              Text(
                'of Rp. 20.000',
                style: blackTextStyle.copyWith(fontWeight: semiBold),
              ),
            ],
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              minHeight: 5,
              value: 0.55,
              valueColor: AlwaysStoppedAnimation(greenColor),
              backgroundColor: lightBackgroundColor,
            ),
          )
        ],
      ),
    );
  }

  Widget servicesSection() {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do Something',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServicesItem(
                iconUrl: 'assets/ico_topup.png',
                title: 'Topup',
                onTap: () {},
              ),
              HomeServicesItem(
                iconUrl: 'assets/ico_send.png',
                title: 'Send',
                onTap: () {},
              ),
              HomeServicesItem(
                iconUrl: 'assets/ico_withdraw.png',
                title: 'Withdraw',
                onTap: () {},
              ),
              HomeServicesItem(
                iconUrl: 'assets/ico_more.png',
                title: 'More',
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget latestTransactionSection() {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transactions',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kDefaultPadding),
              color: whiteColor,
            ),
            child: Column(
              children: const [
                HomeLatestTransactionItem(
                    iconUrl: 'assets/ico_transaction_topup.png',
                    title: 'Top Up',
                    time: 'Yesterday',
                    value: '+ 450.000'),
                HomeLatestTransactionItem(
                    iconUrl: 'assets/ico_transaction_cashback.png',
                    title: 'Cashback',
                    time: 'Oct 11',
                    value: '+ 22.000'),
                HomeLatestTransactionItem(
                    iconUrl: 'assets/ico_transaction_withdraw.png',
                    title: 'Withdraw',
                    time: 'Oct 2',
                    value: '- 5.000'),
                HomeLatestTransactionItem(
                    iconUrl: 'assets/ico_transaction_transfer.png',
                    title: 'Transfer',
                    time: 'Sep 22',
                    value: '- 123.500'),
                HomeLatestTransactionItem(
                    iconUrl: 'assets/ico_transaction_electric.png',
                    title: 'Electric',
                    time: 'Feb 28',
                    value: '- 12.300.000'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget sendAgainSection() {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Send Again',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                HomeUserItem(
                  imageUrl: 'assets/ico_friend1.png',
                  username: 'yuanita',
                ),
                HomeUserItem(
                  imageUrl: 'assets/ico_friend2.png',
                  username: 'jani',
                ),
                HomeUserItem(
                  imageUrl: 'assets/ico_friend3.png',
                  username: 'urip',
                ),
                HomeUserItem(
                  imageUrl: 'assets/ico_friend1.png',
                  username: 'yuanita',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget tipsSection() {
    return Container(
      margin: const EdgeInsets.only(
        top: kDefaultPadding,
        bottom: kDefaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Friendly Tips',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Wrap(
            spacing: 17,
            runSpacing: 18,
            children: const [
              HomeTipsItem(
                imageUrl: 'assets/ico_tips1.png',
                title: 'Best tips for using a credit card',
                url: 'https://kodenatan.id',
              ),
              HomeTipsItem(
                imageUrl: 'assets/ico_tips2.png',
                title: 'Spot the good pie of finance model',
                url: 'https://kodenatan.id',
              ),
              HomeTipsItem(
                imageUrl: 'assets/ico_tips3.png',
                title: 'Great hack to get better advices',
                url: 'https://kodenatan.id',
              ),
              HomeTipsItem(
                imageUrl: 'assets/ico_tips4.png',
                title: 'Save more penny buy this instead',
                url: 'https://kodenatan.id',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
