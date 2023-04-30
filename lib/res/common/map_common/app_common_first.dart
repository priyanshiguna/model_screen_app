import 'package:flutter/material.dart';

import '../../constant/map_strings.dart';

class ListOneCommon extends StatelessWidget {
  final String? nameText;
  final String? image;
  const ListOneCommon({
    Key? key,
    this.nameText,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(image!),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Text(
          nameText!,
          style: const TextStyle(
            color: Color(0xFF2F2F2F),
            fontWeight: FontWeight.w600,
            fontSize: 14,
            fontFamily: MapStrings.fontTwo,
          ),
        ),
      ],
    );
  }
}
