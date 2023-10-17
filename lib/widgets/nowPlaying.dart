import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:remember/data/data.dart';

class NowPlaying extends StatefulWidget {
  const NowPlaying({
    Key? key,
    required this.closeOpen,
  }) : super(key: key);
  final VoidCallback closeOpen;

  @override
  State<NowPlaying> createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(stops: const [
        0.4,
        1
      ], colors: [
        nowPlaying["playerColor2"],
        Colors.black.withOpacity(0.00001)
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              widget.closeOpen();
            },
            icon: const Icon(FluentIcons.chevron_right_12_filled),
          ),
          title: Text(
            nowPlaying["album"],
            style: const TextStyle(fontSize: 14, color: Colors.white70),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(FluentIcons.more_circle_16_filled),
            )
          ],
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Image.network(nowPlaying['imageUrl']),
                  ),
                ),
              ),
              Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 30.0, right: 20.0),
                          child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Text(
                                nowPlaying['title'],
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              subtitle: Text(
                                nowPlaying['artists'],
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.white60),
                              ),
                              trailing: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isLiked = !isLiked;
                                  });
                                },
                                icon: isLiked
                                    ? const Icon(
                                        FluentIcons.heart_20_filled,
                                        color: Colors.greenAccent,
                                      )
                                    : const Icon(
                                        FluentIcons.heart_broken_16_filled),
                              )),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: SliderTheme(
                            data: const SliderThemeData(
                                trackHeight: 3,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 6)),
                            child: Slider(
                              activeColor: Colors.white,
                              inactiveColor: Colors.white30,
                              divisions: 100,
                              value: 20,
                              onChanged: (value) {},
                              min: 0,
                              max: 100,
                            ),
                          ),
                        ),
                      ),
                      const Flexible(
                        flex: 1,
                        child: Padding(
                            padding: EdgeInsets.only(left: 30.0, right: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    "0:33",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white70),
                                  ),
                                ),
                                Text(
                                  "-2:44",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white70),
                                )
                              ],
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(FluentIcons
                                        .arrow_autofit_content_20_filled)),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        FluentIcons.preview_link_16_filled)),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        FluentIcons.play_circle_16_filled)),
                                IconButton(
                                    onPressed: () {},
                                    icon:
                                        const Icon(FluentIcons.next_16_filled)),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        FluentIcons.arrow_repeat_1_16_filled))
                              ],
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        FluentIcons.device_eq_16_filled)),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(FluentIcons.share_16_filled),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(FluentIcons.list_16_filled),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
