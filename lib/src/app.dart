import 'package:flutter/material.dart';
import 'package:ft_line_sdk/src/screen/api_page.dart';
import 'package:ft_line_sdk/src/screen/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        indicatorColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('LINE SDK'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: 'User'),
                Tab(text: 'API'),
              ],
              indicatorColor: null,
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: HomePage(),
              ),
              Center(
                child: APIPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
