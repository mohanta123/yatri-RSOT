// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:yatri_rsot/Screen/cat_screen.dart';
import 'package:yatri_rsot/Screen/qr_screen.dart';
import 'package:yatri_rsot/color/color.dart';

class HomeScreen extends StatelessWidget {
  MyColor colosInstance = MyColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colosInstance.blue,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QRViewExample()),
            );
          },
          child: Text("Open QR Scanner"),
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (builder) => CatScreen()),
          );
        },
        child: Text("next"),
      ),
    );
  }
}
