import 'package:card_loading/card_loading.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class CustomLibraryCard extends StatelessWidget {
  const CustomLibraryCard({
    Key? key,
    this.description,
    required this.imageUrl,
    this.type,
    this.title,
    this.artist,
    this.isPinned,
  }) : super(key: key);

  final String? description;
  final String? title;
  final String imageUrl;
  final bool? isPinned;
  final String? type;
  final String? artist;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return type == 'Artist'
        ? artistLayout(screenWidth, screenHeight, type!, imageUrl, title!)
        : type == 'PlayList' || type == 'Liked'
            ? playlistLayout(screenWidth, screenHeight, type!, imageUrl, title!,
                isPinned == null ? false : true)
            : albumLayout(screenWidth, screenHeight, type!, imageUrl, title!,
                isPinned == null ? false : true, artist == null ? '' : artist!);
  }
}

Widget albumLayout(double screenWidth, double screenHeight, String type,
    String imageUrl, String title, bool isPinned, String artist) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const AspectRatio(
        aspectRatio: 1 / 1,
        child: CardLoading(
          height: 50,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          margin: EdgeInsets.only(bottom: 10),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.01,
          left: screenWidth * 0.006,
          right: screenWidth * 0.02,
        ),
        child: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white70,
            letterSpacing: 0,
            fontWeight: FontWeight.w300,
            fontSize: screenHeight / 64.92,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.005,
          left: screenHeight * 0.006,
          right: screenHeight * 0.02,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isPinned
                ? Row(
                    children: [
                      const Icon(
                        FluentIcons.pin_12_filled,
                        size: 14,
                        color: Colors.greenAccent,
                      ),
                      SizedBox(
                        width: screenWidth * 0.01,
                      ),
                    ],
                  )
                : const SizedBox(),
            Text(
              '$type * $artist',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white70,
                letterSpacing: 0,
                fontSize: screenHeight / 66.92,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      )
    ],
  );
}

Widget playlistLayout(double screenWidth, double screenHeight, String type,
    String imageUrl, String title, bool isPinned) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      AspectRatio(
        aspectRatio: 1 / 1,
        child: Image.network(imageUrl),
      ),
      Padding(
        padding: EdgeInsets.only(
            top: screenHeight * 0.01,
            left: screenWidth * 0.006,
            right: screenWidth * 0.02),
        child: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white70,
            letterSpacing: 0,
            fontSize: screenHeight / 64.92,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
            top: screenHeight * 0.005,
            left: screenWidth * 0.006,
            right: screenWidth * 0.02),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isPinned
                ? Row(
                    children: [
                      const Icon(
                        FluentIcons.pin_12_filled,
                        size: 14,
                        color: Colors.greenAccent,
                      ),
                      SizedBox(
                        width: screenWidth * 0.01,
                      ),
                    ],
                  )
                : const SizedBox(),
            Text(
              type == 'Liked' ? 'Playlist' : type,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.greenAccent,
                  letterSpacing: 0,
                  fontSize: screenWidth / 66.92,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      )
    ],
  );
}

Widget artistLayout(double screenWidth, double screenHeight, String type,
    String imageUrl, String title) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage(imageUrl),
        radius: 85,
      ),
      Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.01),
        child: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white70,
            letterSpacing: 0,
            fontWeight: FontWeight.w300,
            fontSize: screenHeight / 64.92,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.005),
        child: Text(
          type,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white70,
            letterSpacing: 0,
            fontWeight: FontWeight.w300,
            fontSize: screenHeight / 66.92,
          ),
        ),
      )
    ],
  );
}
