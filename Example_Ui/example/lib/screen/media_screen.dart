// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:example/common/appbar.dart';
import 'package:flutter/material.dart';

class Bank extends StatefulWidget {
  const Bank({super.key});

  @override
  State<Bank> createState() => _BankState();
}

class _BankState extends State<Bank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            "My Wallet",
                            style: TextStyle(fontSize: 17),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        //Notfication Icon
                        Icon(Icons.fit_screen_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        //Notfication Icon
                        Icon(Icons.settings),
                        SizedBox(
                          width: 3.0,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 363,
                  height: 233,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(24, 243, 235, 235),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24.0, bottom: 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Balance"),
                        Column(
                          children: [
                            Text(
                              "\$86.013",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 37),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "BNB 6,108.318",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.remove_red_eye_outlined)
                      ],
                    ),
                  ),
                ),
              ),
              //Container End

              //Button Start
              SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 173,
                    height: 42,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.file_upload_outlined,
                          color: Colors.white), //icon data for elevated button
                      label: Text(
                        "Send",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(
                              0xFFD7A504) //elevated btton background color
                          ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    width: 173,
                    height: 42,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.file_download_outlined,
                          color: Colors.white), //icon data for elevated button
                      label: Text(
                        "Receive",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(
                              0xFFD7A504) //elevated btton background color
                          ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 360,
                    height: 42,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.transform_outlined,
                          color: Colors.white), //icon data for elevated button
                      label: Text(
                        "Buy BNB",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(
                              0xFFD7A504) //elevated btton background color
                          ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 77,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text("Assets")
                ],
              ),

              //Start Assets

              Column(
                children: [
                  Option("Bitcoin", "\$19223.47", "-1%", "5 ETH",
                      Icons.arrow_forward_ios, 'assets/images/bitcoin.png'),
                  Option("Bitcoin", "\$1036.097", "-0,18%", "1 ETH",
                      Icons.arrow_forward_ios, 'assets/images/ethereum.png'),
                  Option("Solana", "\$19223.47", "-1%", "1 ETH",
                      Icons.arrow_forward_ios, 'assets/images/solana.png'),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color(0xFFD7A504),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(69, 4, 12, 63),
        elevation: 3,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Left Tab Bar Icons
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (() {
                        setState(
                          () {
                            null;
                          },
                        );
                      }),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_home_outlined,
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text("Home"),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 120,
                      onPressed: (() {
                        setState(
                          () {
                            null;
                          },
                        );
                      }),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.cached_outlined,
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text("swap"),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MaterialButton(
                      minWidth: 100,
                      onPressed: (() {
                        setState(
                          () {
                            null;
                          },
                        );
                      }),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.bubble_chart_outlined,
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text("dapp"),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (() {
                        setState(
                          () {
                            null;
                          },
                        );
                      }),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.animation_outlined,
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text("staking"),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }

  Widget Option(String text, text2, text3, text4, icon, image) {
    return Padding(
        padding: EdgeInsets.only(top: 11.0, left: 6.0, right: 8.0),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: Color.fromARGB(52, 83, 83, 82),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 22,
                  ),
                  ClipOval(
                    child: Image.asset(
                      image,
                      width: 37,
                      height: 37,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            text,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                          SizedBox(
                            width: 144,
                          ),
                          Text(
                            text4,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        children: [
                          Text(
                            text2,
                            style: TextStyle(
                              color: Color.fromARGB(255, 182, 181, 181),
                            ),
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Text(
                            text3,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 204, 40, 28)),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
