// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:udacity_course/category.dart';

final list_size = 8;
final background_color = Colors.green[100];

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  List<Widget> createCategoryList() {
    var list = List<Widget>();
    for (int i = 0; i < list_size; i++) {
      list.add(Category(
        name: _categoryNames[i],
        color: _baseColors[i],
        iconLocation: Icons.cake,
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    final categoryList = createCategoryList();

    // TODO: Create a list view of the Categories
    final listView = ListView(
      children: categoryList,
    );

    // TODO: Create an App Bar
    final appBar = AppBar(
      elevation: 0,
      backgroundColor: background_color,
      title: Text(
        "Unit Converter",
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      centerTitle: true,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
      backgroundColor: background_color,
    );
  }
}
