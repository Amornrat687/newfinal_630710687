import 'package:flutter/material.dart';

import 'weather_tab.dart';

class WeatherApp extends StatefulWidget {
  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(text: 'Seoul'),
                  Tab(text: 'Washington'),
                  Tab(text: 'Italy'),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                WeatherTab(city: 'seoul'),
                WeatherTab(city: 'washington'),
                WeatherTab(city: 'italy'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(WeatherApp());
}
