import 'package:career_edu/JOBS.dart';
import 'package:career_edu/findjobfilter.dart';
import 'package:career_edu/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTabBar2 extends StatefulWidget {
  @override
  _MyTabBar2State createState() => _MyTabBar2State();
}

class _MyTabBar2State extends State<MyTabBar2>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Government Jobs"),
          centerTitle: true,
          leading: InkWell(
              onTap: () {
                Navigator.push(context,
                    (MaterialPageRoute(builder: (context) => MyTabs())));
              },
              child: Icon(Icons.arrow_back)),
          backgroundColor: Colors.blue.shade900,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 360,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        hintText: 'Job, title, Skills or Company',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 360,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        hintText: 'City, Province, Region',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'To Explore Govt Jobs Upgrade package ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          child: ListView(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Upgrade Yourself Now",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10, right: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 150,
                                          child: TextField(
                                              decoration: InputDecoration(
                                                labelText: 'Expiry Date',
                                              ),
                                              keyboardType:
                                                  TextInputType.number,
                                              inputFormatters: <
                                                  TextInputFormatter>[
                                                FilteringTextInputFormatter
                                                    .digitsOnly,
                                              ]),
                                        ),
                                        Container(
                                          height: 50,
                                          width: 150,
                                          child: TextField(
                                              decoration: InputDecoration(
                                                labelText: 'Security Code',
                                              ),
                                              keyboardType:
                                                  TextInputType.number,
                                              inputFormatters: <
                                                  TextInputFormatter>[
                                                FilteringTextInputFormatter
                                                    .digitsOnly,
                                              ]),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Container(
                                      height: 50,
                                      width: 340,
                                      child: TextField(
                                          decoration: InputDecoration(
                                            labelText: 'Card Number',
                                            suffixIcon: Icon(
                                              Icons.credit_card,
                                              color: Colors.blue.shade900,
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                          inputFormatters: <TextInputFormatter>[
                                            FilteringTextInputFormatter
                                                .digitsOnly,
                                          ]),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Container(
                                      height: 50,
                                      width: 340,
                                      child: TextField(
                                          decoration: InputDecoration(
                                            labelText: "Name on Card",
                                            suffixIcon: Icon(
                                              Icons.person,
                                              color: Colors.blue.shade900,
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                          inputFormatters: <TextInputFormatter>[
                                            FilteringTextInputFormatter
                                                .digitsOnly,
                                          ]),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                            height: 25,
                                            width: 25,
                                            color: Colors.white,
                                            child: Icon(Icons.check_box,
                                                size: 25,
                                                color: Colors.blue.shade900)),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            'Remember me',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 340,
                                          decoration: BoxDecoration(
                                              color: Colors.blue.shade900,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Center(
                                            child: Text(
                                              'Upgrade Now',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            'Upgrade',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    height: 90,
                    width: 130,
                    color: Colors.white,
                    child: Center(
                        child: Icon(
                      Icons.blur_off,
                      size: 40,
                      color: Colors.grey,
                    )),
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 80,
                        width: 260,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 0),
                        child: Text(
                          'WAPDA Electercity',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 25),
                        child: Container(
                          height: 10,
                          width: 130,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 45),
                        child: Container(
                          height: 10,
                          width: 170,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 130,
                  color: Colors.white,
                  child: Center(
                      child: Icon(
                    Icons.blur_off,
                    size: 40,
                    color: Colors.grey,
                  )),
                ),
                Stack(
                  children: [
                    Container(
                      height: 80,
                      width: 260,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 0),
                      child: Text(
                        'Department Govt Punjab',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 25),
                      child: Container(
                        height: 10,
                        width: 130,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 45),
                      child: Container(
                        height: 10,
                        width: 170,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 130,
                  color: Colors.white,
                  child: Center(
                      child: Icon(
                    Icons.blur_off,
                    size: 40,
                    color: Colors.grey,
                  )),
                ),
                Stack(
                  children: [
                    Container(
                      height: 80,
                      width: 260,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 0),
                      child: Text(
                        'Govt Officer',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 25),
                      child: Container(
                        height: 10,
                        width: 130,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 45),
                      child: Container(
                        height: 10,
                        width: 170,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 130,
                  color: Colors.white,
                  child: Center(
                      child: Icon(
                    Icons.blur_off,
                    size: 40,
                    color: Colors.grey,
                  )),
                ),
                Stack(
                  children: [
                    Container(
                      height: 80,
                      width: 260,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 0),
                      child: Text(
                        'Customer Support Repersentative',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 25),
                      child: Container(
                        height: 10,
                        width: 130,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 45),
                      child: Container(
                        height: 10,
                        width: 170,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 130,
                  color: Colors.white,
                  child: Center(
                      child: Icon(
                    Icons.blur_off,
                    size: 40,
                    color: Colors.grey,
                  )),
                ),
                Stack(
                  children: [
                    Container(
                      height: 80,
                      width: 260,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 0),
                      child: Text(
                        'Customer Support Repersentative',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 25),
                      child: Container(
                        height: 10,
                        width: 130,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 45),
                      child: Container(
                        height: 10,
                        width: 170,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 130,
                  color: Colors.white,
                  child: Center(
                      child: Icon(
                    Icons.blur_off,
                    size: 40,
                    color: Colors.grey,
                  )),
                ),
                Stack(
                  children: [
                    Container(
                      height: 80,
                      width: 260,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 0),
                      child: Text(
                        'Customer Support Repersentative',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 25),
                      child: Text(
                        'Affinity Pvt Ltd',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 45),
                      child: Text(
                        'Lahore',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60, top: 48),
                      child: Container(
                        height: 13,
                        width: 2,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70, top: 45),
                      child: Text(
                        'Mar 25, 2023',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue.shade700),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
