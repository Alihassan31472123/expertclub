import 'package:career_edu/expertclubacces.dart';
import 'package:career_edu/govtjobs.dart';
import 'package:career_edu/login.dart';
import 'package:career_edu/public_services.dart';
import 'package:career_edu/sngpl.dart';
import 'package:career_edu/ssgc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'electercity.dart';
import 'fescoseaerch.dart';

class Suigas extends StatefulWidget {
  @override
  _SuigasState createState() => _SuigasState();
}

class _SuigasState extends State<Suigas> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Color> _tabColors = [
    Colors.blue.shade900,
    Colors.blue.shade900,
    Colors.blue.shade900,
  ];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: PreferredSize(preferredSize: Size.fromHeight(70.0),child: AppBar(
        
        backgroundColor: Colors.blue.shade900,
        centerTitle: false,
        leading: InkWell(
          onTap: () {
             Navigator.push(context, (MaterialPageRoute(builder: (context)=>MyTabs3())));
          },
          child: Icon(Icons.arrow_back)),
      title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Image.asset(
                  'lib/images/new1exp.png', // Replace with your logo image path
                  height: 60.0,
                  width: 170, // Adjust the image height as needed
                ),
              ),
              // Adjust the spacing between logo and title
            ],
          ),
       ),),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sui Gas',
                    style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
             
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 2,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(color: Colors.greenAccent),
                    controller: _tabController,
                    tabs: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  'Sui Northern Gas Pipeline Limited (SNGPL)',
                                  style: TextStyle(
                                      color: _currentIndex == 2
                                          ? Colors.white
                                          : Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  'Sui Northern Gas Company Limited (SSGC)',
                                  style: TextStyle(
                                      color: _currentIndex == 2
                                          ? Colors.white
                                          : Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 400,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        new BoxShadow(
                                          color: Colors.grey.shade300,
                                          offset: new Offset(
                                            10.10,
                                            10.10,
                                          ),
                                        )
                                      ]),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                              'Sui Northern Gas Pipline Limited (SNGPL)',
                                              style: GoogleFonts.lato(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "All the information Regrading Billing",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 0),
                                            child: Text(
                                              "new connection Complaints.",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey),
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    (MaterialPageRoute(
                                                        builder: (context) =>
                                                            sngpl())));
                                              },
                                              child: Container(
                                                height: 50,
                                                width: 200,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue.shade900,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'EXPLORE/دریافت کریں',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 15),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 400,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        new BoxShadow(
                                          color: Colors.grey.shade300,
                                          offset: new Offset(
                                            10.10,
                                            10.10,
                                          ),
                                        ),
                                      ]),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                              'Sui Southern Gas Company Limited (SSGPL)',
                                              style: GoogleFonts.lato(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                              "All the information regarding",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 0),
                                            child: Text(
                                              "Billing, New Connection, Complaints",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey),
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    (MaterialPageRoute(
                                                        builder: (context) =>
                                                            ssgc())));
                                              },
                                              child: Container(
                                                height: 50,
                                                width: 200,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue.shade900,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'EXPLORE/دریافت کریں',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 17),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
