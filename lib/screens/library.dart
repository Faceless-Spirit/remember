import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:remember/data/data.dart';
import 'package:remember/screens/playlist.dart';
import 'package:remember/widgets/customLibraryCard.dart';
import 'package:remember/widgets/customLibraryListTile.dart';

import 'album.dart';
import 'liked.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  bool isGrid = true;

  Future openBottomSheet() {
    return showModalBottomSheet(
      isScrollControlled: false,
      backgroundColor: Colors.grey[900],
      elevation: 5,
      context: context,
      isDismissible: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      )),
      builder: (context) {
        return ListView(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 5),
          children: const [
            Center(
              child: Icon(
                FluentIcons.line_horizontal_1_16_filled,
                size: 27,
                color: Colors.white24,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 10),
              child: Center(
                child: Text(
                  'Tạo',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                FluentIcons.trophy_16_filled,
                color: Colors.white24,
                size: 28,
              ),
              title: Text('Phòng VIP'),
              subtitle: Text(
                'Nơi thể hiện đẳng cấp của fen',
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                FluentIcons.tablet_12_filled,
                color: Colors.white24,
                size: 28,
              ),
              title: Text('Bàn thường'),
              subtitle: Text(
                'Rẻ và bèo',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          elevation: 5,
          centerTitle: false,
          forceElevated: true,
          backgroundColor: const Color.fromARGB(255, 22, 22, 22),
          title: const Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage(
                    'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Tạo bàn nhậu",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          pinned: true,
          actions: [
            Bounceable(
              curve: Curves.bounceOut,
              reverseCurve: Curves.bounceIn,
              onTap: () {},
              child: const Icon(FluentIcons.search_12_regular),
            ),
            SizedBox(
              width: screenWidth * 0.055,
            ),
            Bounceable(
              curve: Curves.bounceOut,
              reverseCurve: Curves.bounceIn,
              onTap: openBottomSheet,
              child: const Icon(FluentIcons.add_12_filled),
            ),
            SizedBox(
              width: screenWidth * 0.03,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size(screenWidth, screenHeight * 0.06),
            child: Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.035, bottom: screenHeight * 0.005),
              child: Row(
                children: [
                  Bounceable(
                    onTap: () {},
                    child: Chip(
                      label: const Text('VIP'),
                      backgroundColor: Colors.black,
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight / 65.92),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.015,
                  ),
                  Bounceable(
                    onTap: () {},
                    child: Chip(
                      label: const Text('Bàn'),
                      backgroundColor: Colors.black,
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight / 65.92),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.015,
                  ),
                  Bounceable(
                    onTap: () {},
                    child: Chip(
                      label: const Text('Chưa thanh toán'),
                      backgroundColor: Colors.black,
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight / 65.92),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.015,
                  ),
                  Bounceable(
                    onTap: () {},
                    child: Chip(
                      label: const Text('Thanh toán rồi'),
                      backgroundColor: Colors.black,
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight / 65.92),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Padding(
              padding: const EdgeInsets.only(top: 10, right: 5, left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Icon(
                            FluentIcons.arrow_autofit_content_20_filled,
                            size: 20,
                          ),
                        ),
                        Text('Xếp lại cho dễ nhìn')
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          isGrid = !isGrid;
                        });
                      },
                      icon: isGrid
                          ? const Icon(FluentIcons.apps_list_20_filled)
                          : const Icon(FluentIcons.grid_16_filled)),
                ],
              )),
          isGrid
              ? GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    mainAxisExtent: screenHeight * 0.28,
                  ),
                  padding: const EdgeInsets.only(
                    bottom: 200,
                    left: 10,
                    right: 10,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    var data = library[index];
                    return Bounceable(
                      onTap: () {
                        if (data['type'] == 'VIP') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Playlist(data: data),
                              ));
                        } else if (data['type'] == 'Liked') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Liked(data: data),
                              ));
                        } else if (data['type'] == 'President') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Album(data: data),
                              ));
                        }
                      },
                      child: Center(
                        child: CustomLibraryCard(
                          imageUrl: library[index]['imageUrl'],
                          title: library[index]['title'],
                          type: library[index]['type'],
                          isPinned: library[index]['isPinned'],
                          artist: library[index]['artist'],
                        ),
                      ),
                    );
                  },
                  itemCount: library.length,
                )
              : ListView.builder(
                  padding: const EdgeInsets.only(bottom: 200),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var data = library[index];
                    return Bounceable(
                      onTap: () {
                        if (data['type'] == 'VIP') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Playlist(data: data),
                              ));
                        } else if (data['type'] == 'Bình dân') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Liked(data: data),
                              ));
                        } else if (data['type'] == 'Bàn tổng thống') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Album(data: data),
                              ));
                        }
                      },
                      child: CustomLibraryListTile(
                        imageUrl: library[index]['imageUrl'],
                        type: library[index]['type'],
                        title: library[index]['title'],
                        artist: library[index]['artist'],
                      ),
                    );
                  },
                  itemCount: library.length,
                )
        ]))
      ],
    );
  }
}
