import 'package:ewallet/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeTipsItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String url;
  const HomeTipsItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunchUrl(Uri.parse(url))) {
          launchUrl(Uri.parse(url));
        }
      },
      child: Container(
        width: 150,
        height: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kDefaultPadding),
            color: whiteColor),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(kDefaultPadding),
              ),
              child: Image.asset(
                imageUrl,
                width: double.infinity,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: kDefaultPadding / 2,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
              child: Text(
                title,
                style: blackTextStyle.copyWith(fontWeight: medium),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
