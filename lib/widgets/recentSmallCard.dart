import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';

class RecentSmallCard extends StatelessWidget {
  const RecentSmallCard({Key? key, required this.imageUrl, required this.title})
      : super(key: key);
  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    var screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    return Card(
      child: SizedBox(
        child: Row(
          children: [
            Container(
              width: screenWidth * 0.144,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
                // image: DecorationImage(
                //     fit: BoxFit.cover, image: NetworkImage(imageUrl))
              ),
              child:
              const CardLoading(
                height: 100,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                margin: EdgeInsets.only(bottom: 10),
              ),
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.all(screenHeight * 0.012),
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
