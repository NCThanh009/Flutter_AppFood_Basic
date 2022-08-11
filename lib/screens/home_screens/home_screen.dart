// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget Products() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 180,
      width: 115,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/hungtay.jpg'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Húng Tây',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '50VND/1Kg',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5, right: 3),
                          height: 15,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                '1Kg',
                                style: TextStyle(fontSize: 10),
                              )),
                              Center(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 15,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          height: 15,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.remove,
                                size: 15,
                                color: Colors.red,
                              ),
                              Text(
                                '1',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.red),
                              ),
                              Icon(
                                Icons.add,
                                size: 15,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Color.fromARGB(248, 101, 171, 229),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Trang chủ',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 12,
              child: Icon(
                Icons.search,
                size: 15,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 12,
                child: Icon(
                  Icons.shop,
                  size: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ],
          backgroundColor: Colors.blue),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/BoxDecor.jpg'),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 150, bottom: 10),
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'ToIDo',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    shadows: [
                                      BoxShadow(
                                        blurRadius: 5,
                                        color: Colors.red.shade900,
                                        offset: Offset(3, 3),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Giảm 25%',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Trên tất cả các sản phẩm rau củ quả',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Thảo dược',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Xem tất cả',
                    style: TextStyle(color: Color.fromARGB(255, 109, 107, 107)),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Products(),
                  Products(),
                  Products(),
                  Products(),
                  Products(),
                  Products(),
                  Products(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trái cây tươi',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Xem tất cả',
                    style: TextStyle(color: Color.fromARGB(255, 109, 107, 107)),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Products(),
                  Products(),
                  Products(),
                  Products(),
                  Products(),
                  Products(),
                  Products(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
