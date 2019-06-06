import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_search_bloc/source/models/categories.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      padding: EdgeInsets.fromLTRB(8, 12, 8, 12),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              style: TextStyle(
                color: Colors.blue[900],
                fontSize: 24,
              ),
              decoration: InputDecoration(
                hintText: 'Product Title',
                border: InputBorder.none,
                icon: Icon(
                  Icons.search,
                  color: Colors.blue[900],
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Wrap(
                  spacing: 8,
                  children: [
                    for (final item in categories) _buildChips(title: item),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  FilterChip _buildChips({@required String title}) {
    return FilterChip(
      selectedColor: Colors.blue,
      label: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      onSelected: (bool value) {
        print(value);
      },
      backgroundColor: Colors.blue[200],
      selected: Random().nextBool(),
    );
  }
}
