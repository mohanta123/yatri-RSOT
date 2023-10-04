// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:yatri_rsot/color/color.dart';

class CartScrren extends StatefulWidget {
  const CartScrren({super.key});

  @override
  State<CartScrren> createState() => _CartScrrenState();
}

class _CartScrrenState extends State<CartScrren> {
  MyColor colosInstance = MyColor();
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: colosInstance.blue,
        title: Text(
          "Item List",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SizedBox(
        height: deviceHeight,
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(1.4),
                child: Container(
                  decoration:
                      BoxDecoration(border: Border(bottom: BorderSide())),
                  height: deviceHeight * 0.099,
                  width: deviceWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chicken biriyani",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "₹ 150.00",
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 2),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              height: deviceHeight * 0.06,
                              width: deviceWidth * 0.1,
                              alignment: Alignment
                                  .topCenter, // Center the child within the Container
                              child: Icon(Icons.minimize),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "1",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 2),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              height: deviceHeight * 0.06,
                              width: deviceWidth * 0.1,
                              alignment: Alignment
                                  .center, // Center the child within the Container
                              child: Icon(Icons.add),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
