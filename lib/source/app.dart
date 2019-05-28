import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('data'),
          brightness: Brightness.light,
          backgroundColor: Colors.green[300],
          elevation: 1,
        ),
        body: Container(
          color: Colors.green[500],
          child: SearchBar(),
        ),
      ),
    );
  }
}

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
              decoration: InputDecoration(
                hintText: 'Search',
                border: InputBorder.none,
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                ActionChip(
                  label: Text('Product Title'),
                  onPressed: () {
                    print(Title);
                  },
                ),
                SizedBox(width: 8),
                FilterChip(
                  label: Text('Order Number'),
                  onSelected: (bool value) {
                    print('Order Number');
                  },
                  selected: true,
                ),
                SizedBox(width: 8),
                FilterChip(
                  label: Text('Customer Name'),
                  onSelected: (bool value) {
                    print('Customer');
                  },
                ),
                SizedBox(width: 8),
                FilterChip(
                  label: Text('Date'),
                  onSelected: (bool value) {
                    print('Date');
                  },
                ),
              ],
            ),
          ),
          // Wrap(
          //   spacing: 8,
          //   runSpacing: 0,
          //   children: <Widget>[
          //     ActionChip(
          //       label: Text('Product Name'),
          //       onPressed: () {
          //         print(Title);
          //       },
          //     ),
          //     FilterChip(
          //       label: Text('Order Number'),
          //       onSelected: (bool value) {
          //         print('Order Number');
          //       },
          //       selected: true,
          //     ),
          //     FilterChip(
          //       label: Text('Customer'),
          //       onSelected: (bool value) {
          //         print('Customer');
          //       },
          //     ),

          //   ],
          // ),
        ],
      ),
    );
  }
}
