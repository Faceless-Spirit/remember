import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:remember/data/data.dart';
import 'package:remember/screens/playlist.dart';
import 'package:remember/screens/settings.dart';
import 'package:remember/utils/timeRange.dart';
import 'package:remember/widgets/personalCard.dart';
import 'package:remember/widgets/recentSmallCard.dart';
import 'package:remember/widgets/recommendCard.dart';
import 'package:remember/widgets/title.dart';

import 'album.dart';
import 'liked.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: const Color.fromARGB(255, 22, 22, 22),
            elevation: 0,
            centerTitle: false,
            title: Text(
              TimeRange().checkRange(),
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
            pinned: true,
            snap: true,
            floating: true,
            actions: [
              Bounceable(
                  onTap: () {},
                  curve: Curves.bounceOut,
                  reverseCurve: Curves.bounceIn,
                  child: const Icon(FluentIcons.alert_12_filled)),
              SizedBox(
                width: screenWidth * 0.055,
              ),
              Bounceable(
                  onTap: () {},
                  curve: Curves.bounceOut,
                  reverseCurve: Curves.bounceIn,
                  child: const Icon(FluentIcons.history_16_filled)),
              SizedBox(
                width: screenWidth * 0.055,
              ),
              Bounceable(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Settings(),
                        ));
                  },
                  curve: Curves.bounceOut,
                  reverseCurve: Curves.bounceIn,
                  child: const Icon(FluentIcons.settings_16_filled)),
              SizedBox(
                width: screenWidth * 0.03,
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size(screenWidth, screenHeight * 0.06),
              child: Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.035),
                child: Row(
                  children: [
                    Bounceable(
                      onTap: () {},
                      child: Chip(
                        backgroundColor: Colors.black12,
                        label: const Text('Bàn còn trống'),
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: screenHeight / 64.92),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.015,
                    ),
                    Bounceable(
                      onTap: () {},
                      child: Chip(
                        backgroundColor: Colors.black12,
                        label: const Text('Bàn đang nhậu'),
                        labelStyle: TextStyle(
                            fontSize: screenHeight / 64.92,
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.025, vertical: screenHeight * 0.01),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  var data = recentSmallCards[index];
                  return Bounceable(
                    onTap: () {
                      if (data['type'] == 'Liked') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Liked(data: data),
                            ));
                      } else if (data['type'] == 'President' ||
                          data['type'] == 'Normal') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Album(data: data),
                            ));
                      }
                    },
                    child: RecentSmallCard(
                      title: recentSmallCards[index]['title'],
                      imageUrl: recentSmallCards[index]['imageUrl'],
                    ),
                  );
                },
                childCount: recentSmallCards.length,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: screenHeight * 0.075,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.036,
                    top: screenHeight * 0.01,
                    bottom: screenHeight * 0.02),
                child: const CustomTitle(text: 'Đang nhậu'),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                  height: screenHeight * 0.25,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var data = madeForUser[index];
                      return Bounceable(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Playlist(
                                data: data,
                              ),
                            ),
                          );
                        },
                        child: RecommendCard(
                            description: madeForUser[index]['description'],
                            imageUrl: madeForUser[index]['imageUrl']),
                      );
                    },
                    itemCount: madeForUser.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.04,
                      right: screenWidth * 0.04,
                    ),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.036,
                    top: screenHeight * 0.01,
                    bottom: screenHeight * 0.02),
                child: const CustomTitle(
                  text: 'Khách nhậu gần đây',
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                  height: screenHeight * 0.24,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var data = recentlyPlayed[index];
                      return Bounceable(
                        onTap: () {
                          if (data['type'] == 'Playlist') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Playlist(data: data)));
                          } else if (data['type'] == 'Liked') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Liked(data: data)));
                          } else if (data['type'] == 'President' ||
                              data['type'] == 'Normal') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Album(data: data)));
                          }
                        },
                        child: PersonalCard(
                            // imageUrl: recentlyPlayed[index]['imageUrl'],
                            title: recentlyPlayed[index]['title']),
                      );
                    },
                    itemCount: recentlyPlayed.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.04, right: screenWidth * 0.04),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.01,
                  bottom: screenHeight * 0.02,
                  left: screenWidth * 0.036,
                ),
                child: const CustomTitle(
                  text: 'Khách tây',
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                  height: screenHeight * 0.27,
                  child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Bounceable(
                          onTap: () {},
                          child: const PersonalCard(
                              title: 'Bàn 19',
                              description: '',
                              // imageUrl:
                              //     'https://res.cloudinary.com/drpatrit3/image/upload/v1685428216/bmw135a10b5a09bcb3276eaf6d26a36ecfa_awjavu.jpg'
                        ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(width: screenWidth * 0.02);
                      },
                      shrinkWrap: true,
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.04, right: screenWidth * 0.04),
                      scrollDirection: Axis.horizontal,
                      itemCount: 1),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.036,
                    top: screenHeight * 0.01,
                    bottom: screenHeight * 0.02),
                child: CustomTitle(text: "Bàn còn trống"),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                  height: screenHeight * 0.24,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var data = vietnamBest[index];
                      return Bounceable(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Playlist(data: data),
                              ));
                        },
                        child: RecommendCard(
                            description: vietnamBest[index]['description'],
                            imageUrl: vietnamBest[index]['imageUrl']),
                      );
                    },
                    itemCount: vietnamBest.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.04, right: screenWidth * 0.04),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.036,
                    top: screenHeight * 0.01,
                    bottom: screenHeight * 0.02),
                child: const CustomTitle(text: 'Khách mới'),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                  height: screenHeight * 0.24,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var data = charts[index];
                      return Bounceable(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Playlist(data: data),
                              ));
                        },
                        child: RecommendCard(
                            description: charts[index]['description'],
                            imageUrl: charts[index]['imageUrl']),
                      );
                    },
                    itemCount: charts.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.04, right: screenWidth * 0.04),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.036,
                    top: screenHeight * 0.01,
                    bottom: screenHeight * 0.02),
                child: const CustomTitle(text: 'Khách nóng nảy'),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                  height: screenHeight * 0.24,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var data = moods[index];
                      return Bounceable(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Playlist(data: data),
                              ));
                        },
                        child: RecommendCard(
                            description: moods[index]['description'],
                            imageUrl: moods[index]['imageUrl']),
                      );
                    },
                    itemCount: moods.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.04, right: screenWidth * 0.04),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.036,
                    top: screenHeight * 0.01,
                    bottom: screenHeight * 0.02),
                child: const CustomTitle(text: 'Bàn còn trống'),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                  height: screenHeight * 0.28,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var data = newReleases[index];
                      return Bounceable(
                        onTap: () {
                          if (data['type'] == 'Playlist') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Playlist(data: data),
                                ));
                          } else if (data['type'] == 'President' ||
                              data['type'] == 'Normal') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Album(data: data),
                                ));
                          }
                        },
                        child: PersonalCard(
                            title: newReleases[index]['title'],
                            description: newReleases[index]['description'],
                            // imageUrl: newReleases[index]['imageUrl']
                      ),
                      );
                    },
                    itemCount: newReleases.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.04, right: screenWidth * 0.04),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.2,
              )
            ]),
          ),
        ],
      ),
    );
  }
}
