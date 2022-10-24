import 'package:ewallet/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeUserItem extends StatelessWidget {
  final String imageUrl;
  final String username;
  final VoidCallback? onTap;

  const HomeUserItem({
    Key? key,
    required this.imageUrl,
    required this.username,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: kDefaultPadding / 2),
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultMargin),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Container(
            width: 45,
            height: 45,
            margin: const EdgeInsets.only(bottom: kDefaultMargin / 2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            '@$username',
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
