import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Tab Bar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabBarViewPage(),
    );
  }
}

class TabBarViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Bar View'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Tab1Page(),
            Tab2Page(),
            Tab3Page(),
          ],
        ),
      ),
    );
  }
}

class Tab1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab 1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(Page2());
          },
          child: Text('Go to Page 2'),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(Page3());
          },
          child: Text('Go to Page 3'),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  final List<dynamic> items = [
    {"title": "Samosas"},
    {"title": "Chaat"},
    {"title": "Pani Puri"},
    {"title": "Bhelpuri"},
    {"title": "Kachori"},
    {"title": "Chole Bhature"},
    {"title": "Matar Kulcha"},
    {"title": "Dosa"},
    {"title": "Milk"},
    {"title": "Bread"},
    {"title": "Butter"},
    {"title": "Cheese"},
    {"title": "Yoghurt"},
    {"title": "Sandwich"},
    {"title": "Pancake"},
    {"title": "Pie"},
    {"title": "Cake"},
    {"title": "Lemon"},
    {"title": "Pizza"},
    {"title": "Carrots"},
    {"title": "Grapes"},
    {"title": "Eggs"},
    {"title": "Oats"},
    {"title": "Pancakes"},
    {"title": "Crepes"},
    {"title": "Waffles"},
    {"title": "Idli"}
  ]; // Sample data, replace this with your actual JSON data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]['title']),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.back();
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}

class Tab2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab 2'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(Page3(), fullscreenDialog: true);
          },
          child: Text('Go to Page 3 (Fullscreen)'),
        ),
      ),
    );
  }
}

class Tab3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab 3'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.offAll(Tab2Page());
          },
          child: Text('Go to Tab 2'),
        ),
      ),
    );
  }
}
