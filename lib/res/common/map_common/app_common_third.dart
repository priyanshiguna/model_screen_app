import 'package:flutter/material.dart';

import '../../constant/map_strings.dart';

class ListThreeCommon extends StatelessWidget {
  final String? image;
  final String? name;
  final String? song;

  const ListThreeCommon({
    Key? key,
    this.image,
    this.name,
    this.song,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image!),
          height: 130,
          width: 150,
        ),
        Text(
          name!,
          style: const TextStyle(
            color: Color(0xFF2F2F2F),
            fontFamily: MapStrings.fontTwo,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          song!,
          style: const TextStyle(
            color: Color(0xFF2F2F2F),
            fontWeight: FontWeight.w400,
            fontSize: 12,
            fontFamily: MapStrings.fontTwo,
          ),
        ),
      ],
    );
  }
}
