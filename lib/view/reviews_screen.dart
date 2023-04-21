import 'package:flutter/material.dart';

import '../data/app_data.dart';
import '../res/common/app_common.dart';
import '../res/constant/app_strings.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({Key? key}) : super(key: key);

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xFFABA8A8),
                    size: 25,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  const Text(
                    AppString.title,
                    style: TextStyle(
                      fontFamily: "WorkSans",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => AppCommonScreen(
                    image: modelList[index].image,
                    nameText: modelList[index].name,
                    ratingText: modelList[index].rating,
                    dateAndTimeText: modelList[index].dateAndTime,
                    descriptionText: modelList[index].description,
                  ),
                  separatorBuilder: (context, index) => const Divider(
                    color: Color(0xff2E2A2A),
                    thickness: 1,
                  ),
                  itemCount: modelList.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
