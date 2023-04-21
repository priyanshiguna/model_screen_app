import 'package:flutter/material.dart';

import '../constant/app_strings.dart';

class AppCommonScreen extends StatelessWidget {
  final String? nameText;
  final String? ratingText;
  final String? dateAndTimeText;
  final String? descriptionText;
  final String? image;
  const AppCommonScreen({
    Key? key,
    this.image,
    this.nameText,
    this.descriptionText,
    this.ratingText,
    this.dateAndTimeText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 85),
          child: Image(
            image: AssetImage(image!),
            height: 40,
            width: 40,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nameText!,
                style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: "WorkSans",
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Image(
                    image: AssetImage(AppImages.viewRate),
                    height: 21.5,
                    width: 22,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    ratingText!,
                    style: const TextStyle(
                      color: Color(0xffBCBCBC),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: "WorkSans",
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Text(
                dateAndTimeText!,
                style: const TextStyle(
                  color: Color(0xff878686),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: "WorkSans",
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Text(
                descriptionText!,
                style: const TextStyle(
                  color: Color(0xffBCBCBC),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: "WorkSans",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
