import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:remember/data/data.dart';

class Playlist extends StatelessWidget {
  const Playlist({Key? key, required this.data}) : super(key: key);

  final Map data;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    double top = 0;
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 22, 22, 22),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: const Color.fromARGB(255, 22, 22, 22),
              elevation: 0,
              pinned: true,
              expandedHeight: screenHeight * 0.4,
              floating: false,
              flexibleSpace: LayoutBuilder(
                builder: (ctx, cons) {
                  top = cons.biggest.height;
                  return FlexibleSpaceBar(
                    collapseMode: CollapseMode.parallax,
                    centerTitle: true,
                    title: AnimatedOpacity(
                      duration: const Duration(milliseconds: 100),
                      opacity: top <= 130 ? 1.0 : 0.0,
                      child: Text(data['name']),
                    ),
                    background: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: data['colors'],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: const [0.0, 1],
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 70, right: 70, top: 50),
                        child: Image.network(data['imageUrl']),
                      ),
                    ),
                  );
                },
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data['description'],
                              style: const TextStyle(
                                  color: Colors.white24,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                            data['by'] == null
                                ? const Text(
                                    '~',
                                    style: TextStyle(
                                        color: Colors.white24,
                                        fontWeight: FontWeight.w300),
                                  )
                                : Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 11,
                                        backgroundImage:
                                            NetworkImage(data['byAvatar']),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(data['by']),
                                      )
                                    ],
                                  ),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                            Row(
                              children: [
                                if (data['by'] != null)
                                  Text(
                                    '${data['likes']} cho thời gian nhậu là: ',
                                    style: const TextStyle(
                                        color: Colors.white24,
                                        fontWeight: FontWeight.w300),
                                  ),
                                Text(
                                  data['duration'],
                                  style: const TextStyle(
                                      color: Colors.white24,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon:
                                const Icon(FluentIcons.arrow_trending_12_filled),
                            padding: const EdgeInsets.only(left: 20),
                            iconSize: 26,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(FluentIcons.more_circle_16_filled),
                            padding: const EdgeInsets.only(left: 20, top: 5),
                            iconSize: 26,
                          ),
                        ],
                      )
                    ],
                  ),
                  Positioned(
                    bottom: 10,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.greenAccent[400],
                            shape: BoxShape.circle),
                        child: IconButton(
                            iconSize: 26,
                            padding: const EdgeInsets.all(15),
                            color: Colors.black,
                            onPressed: () {},
                            icon:
                                const Icon(FluentIcons.money_calculator_20_filled)),
                      ),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 15, bottom: 50),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  var songData = data['songs'][index];
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    horizontalTitleGap: 0,
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Image.network(
                          songData['albumArt'],
                          height: 100,
                        ),
                      ),
                    ),
                    title: Text(
                      songData['name'],
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w300),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      songData['artist'],
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          songData['isLiked']
                              ? Icon(
                                  FluentIcons.heart_broken_16_filled,
                                  color: Colors.greenAccent[400],
                                  size: 20,
                                )
                              : const SizedBox(),
                          IconButton(
                            onPressed: () {},
                            icon:
                                const Icon(FluentIcons.more_vertical_16_filled),
                            padding: const EdgeInsets.only(left: 20, top: 5),
                            iconSize: 26,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: songs.length,
              )
            ]))
          ],
        ),
      ),
    );
  }
}
