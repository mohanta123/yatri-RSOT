// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:yatri_rsot/color/color.dart';
import 'package:yatri_rsot/list/list.dart';

class CatScreen extends StatefulWidget {
  const CatScreen({super.key});

  @override
  State<CatScreen> createState() => _CatScreenState();
}

class _CatScreenState extends State<CatScreen> {
  ListScreen listInstance = ListScreen();
  MyColor colorinstance = MyColor();
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: colorinstance.blue,
          title: Text(
            "Category",
            style: TextStyle(color: Colors.white),
          )),
      body: GridView.builder(
          itemCount: listInstance.itemName.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
          itemBuilder: (context, index) {
            return Container(
              height: deviceHeight * 0.2,
              width: deviceWidth * 0.2,
              color: Colors.primaries[index % 10],
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        listInstance.itemName[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
