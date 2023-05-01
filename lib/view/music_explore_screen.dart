import 'dart:convert';

import 'package:flutter/material.dart';

import '../data/music_data.dart';
import '../model/map_model.dart';
import '../res/common/map_common/app_common_first.dart';
import '../res/common/map_common/app_common_second.dart';
import '../res/common/map_common/app_common_third.dart';
import '../res/constant/map_strings.dart';

class MusicExploreScreen extends StatefulWidget {
  const MusicExploreScreen({Key? key}) : super(key: key);

  @override
  State<MusicExploreScreen> createState() => _MusicExploreScreenState();
}

class _MusicExploreScreenState extends State<MusicExploreScreen> {
  UsersData? userData;

  @override
  void initState() {
    userData = usersDataFromMap(jsonEncode(musicExploreData));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        width: double.infinity,
        height: 56,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SizedBox(height: 5),
                  Image(
                    image: AssetImage(MapImages.musicHome),
                    height: 22.5,
                    width: 24,
                  ),
                  Text(
                    MapStrings.home,
                    style: TextStyle(
                      color: Color(0xff2F2F2F),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto",
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SizedBox(height: 5),
                  Image(
                    image: AssetImage(MapImages.searchNormal),
                    height: 22.5,
                    width: 24,
                  ),
                  Text(
                    MapStrings.search,
                    style: TextStyle(
                      color: Color(0xff2F2F2F),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 68,
                    height: 6,
                    color: const Color(0xFF32B1F8),
                  ),
                  const SizedBox(height: 5),
                  const Image(
                    image: AssetImage(MapImages.stopCircle),
                    height: 22.5,
                    width: 24,
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    MapStrings.explore,
                    style: TextStyle(
                      color: Color(0xff32B1F8),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto",
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SizedBox(height: 5),
                  Image(
                    image: AssetImage(MapImages.musicLibrary),
                    height: 22.5,
                    width: 24,
                  ),
                  Text(
                    MapStrings.library,
                    style: TextStyle(
                      color: Color(0xff2F2F2F),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto",
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    const Text(
                      MapStrings.titleOne,
                      style: TextStyle(
                        color: Color(0xFF2F2F2F),
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        fontFamily: MapStrings.fontOne,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Stack(children: const [
                        Image(image: AssetImage(MapImages.explore)),
                        Padding(
                          padding: EdgeInsets.only(top: 88, left: 15),
                          child: Text(
                            MapStrings.aboutPlayList,
                            style: TextStyle(
                              color: Color(0xffFBFBFB),
                              fontFamily: MapStrings.fontOne,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    const Text(
                      MapStrings.titleTwo,
                      style: TextStyle(
                        color: Color(0xFF2F2F2F),
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        fontFamily: MapStrings.fontOne,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => ListOneCommon(
                          image: userData!.firstModel![index].image,
                          nameText: userData!.firstModel![index].name,
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        itemCount: userData!.firstModel!.length,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    const Text(
                      MapStrings.titleThree,
                      style: TextStyle(
                        color: Color(0xFF2F2F2F),
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        fontFamily: MapStrings.fontOne,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 1.5,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => ListTwoCommon(
                          image: userData!.secondModel![index].image,
                          name: userData!.secondModel![index].name,
                          description:
                              userData!.secondModel![index].description,
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        itemCount: userData!.secondModel!.length,
                      ),
                    ),
                    const Text(
                      MapStrings.titleFour,
                      style: TextStyle(
                        color: Color(0xFF2F2F2F),
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        fontFamily: MapStrings.fontOne,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 1.5,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => ListThreeCommon(
                          image: userData!.thirdModel![index].image,
                          name: userData!.thirdModel![index].name,
                          song: userData!.thirdModel![index].song,
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        itemCount: userData!.thirdModel!.length,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    const Text(
                      MapStrings.titleFive,
                      style: TextStyle(
                        color: Color(0xFF2F2F2F),
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        fontFamily: MapStrings.fontOne,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 1.5,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => ListTwoCommon(
                          image: userData!.fourthModel![index].image,
                          name: userData!.fourthModel![index].name,
                          description:
                              userData!.fourthModel![index].description,
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        itemCount: userData!.fourthModel!.length,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    const Text(
                      MapStrings.titleSix,
                      style: TextStyle(
                        color: Color(0xFF2F2F2F),
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        fontFamily: MapStrings.fontOne,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 1.5,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => ListThreeCommon(
                          image: userData!.fifthModel![index].image,
                          name: userData!.fifthModel![index].name,
                          song: userData!.fifthModel![index].song,
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        itemCount: userData!.fifthModel!.length,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    const Text(
                      MapStrings.titleSeven,
                      style: TextStyle(
                        color: Color(0xFF2F2F2F),
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        fontFamily: MapStrings.fontOne,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.50,
                      width: MediaQuery.of(context).size.width * 1.5,
                      child: GridView.builder(
                        itemCount: userData!.sixthModel!.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return ListThreeCommon(
                            image: userData!.sixthModel![index].image,
                            name: userData!.sixthModel![index].name,
                            song: userData!.sixthModel![index].song,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            MapStrings.titleEight,
                            style: TextStyle(
                              color: Color(0xFF2F2F2F),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              fontFamily: MapStrings.fontOne,
                            ),
                          ),
                          Text(
                            MapStrings.seeAll,
                            style: TextStyle(
                              color: Color(0xFFC327BC),
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              fontFamily: MapStrings.fontTwo,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 1.5,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => ListThreeCommon(
                          image: userData!.seventhModel![index].image,
                          name: userData!.seventhModel![index].name,
                          song: userData!.seventhModel![index].song,
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        itemCount: userData!.seventhModel!.length,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 578, right: 20, left: 20),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.09,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  border: Border.all(color: const Color(0xFF32B1F8))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 4,
                    width: 196,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFF1D93D5),
                        Color(0xFFAF1FA8),
                      ]),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(10)),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        const Image(
                          image: AssetImage(MapImages.playone),
                          height: 46,
                          width: 46,
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              MapStrings.monalisa,
                              style: TextStyle(
                                color: Color(0xFF2F2F2F),
                                fontFamily: MapStrings.fontTwo,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              MapStrings.lojay,
                              style: TextStyle(
                                color: Color(0xFF2F2F2F),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                fontFamily: MapStrings.fontTwo,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Image(
                          image: AssetImage(MapImages.previous),
                          height: 24,
                          width: 24,
                        ),
                        const SizedBox(width: 10),
                        const Image(
                          image: AssetImage(MapImages.pause),
                          height: 46,
                          width: 46,
                        ),
                        const SizedBox(width: 10),
                        const Image(
                          image: AssetImage(MapImages.next),
                          height: 24,
                          width: 24,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
