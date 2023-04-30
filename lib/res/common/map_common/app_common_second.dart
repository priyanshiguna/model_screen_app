import 'package:flutter/material.dart';

import '../../constant/map_strings.dart';

class ListTwoCommon extends StatelessWidget {
  final String? image;
  final String? name;
  final String? description;
  const ListTwoCommon({
    Key? key,
    this.image,
    this.name,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          Image(
            image: AssetImage(image!),
            height: 130,
            width: 150,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 15),
            child: Text(
              name!,
              style: const TextStyle(
                color: Color(0xffFBFBFB),
                fontFamily: MapStrings.fontOne,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ]),
        Text(
          description!,
          style: const TextStyle(
            color: Color(0xFF2F2F2F),
            fontWeight: FontWeight.w600,
            fontSize: 12,
            fontFamily: MapStrings.fontTwo,
          ),
        ),
      ],
    );
  }
}
