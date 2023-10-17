import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:remember/data/data.dart';
import 'package:remember/widgets/searchBar.dart';
import 'package:remember/widgets/searchCategoryCard.dart';
import 'package:remember/widgets/title.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color.fromARGB(255, 22, 22, 22),
            elevation: 0,
            centerTitle: false,
            title: const Text(
              'Tìm kiếm',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            pinned: true,
            floating: true,
            snap: true,
            bottom: PreferredSize(
                preferredSize: Size(screenWidth, screenHeight * 0.07),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.035,
                    right: screenWidth * 0.035,
                    bottom: screenHeight * 0.01,
                  ),
                  child: const SearchBar(),
                )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
              child: CustomTitle(text: 'Menu quán'),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: screenHeight * 0.12,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 200,
              ),
              itemBuilder: (context, index) {
                return Bounceable(
                  onTap: () {},
                  child: SearchCategoryCard(
                    imageUrl: searchCategories[index]['image'],
                    title: searchCategories[index]['title'],
                    color: searchCategories[index]['color'],
                  ),
                );
              },
              itemCount: searchCategories.length,
            )
          ]))
        ],
      ),
    );
  }
}
