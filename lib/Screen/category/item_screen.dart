// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:yatri_rsot/Screen/category/cart_screen.dart';
import 'package:yatri_rsot/cart/cart_screen.dart';
import 'package:yatri_rsot/color/color.dart';
import 'package:yatri_rsot/list/list.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  List<bool> isSelectedList = List.generate(5, (index) => false);

  void _toggleSelection(int index) {
    setState(() {
      isSelectedList[index] = !isSelectedList[index];
    });
  }

  ListScreen listInstance = ListScreen();
  MyColor colorinstance = MyColor();
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (builder) => CartScreen()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
          )
        ],
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
        backgroundColor: colorinstance.blue,
        title: Text(
          "Item",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: GridView.builder(
          itemCount: listInstance.itemList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => CartScrren()),
                // );
              },
              child: Container(
                height: deviceHeight * 0.3,
                width: deviceWidth * 0.2,
                color: Colors.primaries[index % 10],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: GestureDetector(
                            onTap: () {
                              _toggleSelection(index); // Pass the index here
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:
                                    isSelectedList[index] // Use isSelectedList
                                        ? Colors.blue
                                        : Colors.white,
                              ),
                              child: Icon(
                                Icons.add,
                                color:
                                    isSelectedList[index] // Use isSelectedList
                                        ? Colors.white
                                        : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      listInstance.itemList[index],
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "120",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
