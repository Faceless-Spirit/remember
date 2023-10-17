import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      cursorColor: Colors.black,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0),
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent)),
        prefixIcon: Icon(
          FluentIcons.search_20_filled,
          color: Colors.black,
        ),
        hintText: 'Lựa món đi fen?',
        hintStyle: TextStyle(color: Colors.black),
        prefixIconColor: Colors.black,
      ),
    );
  }
}
