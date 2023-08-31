import 'package:career_edu/about.dart';
import 'package:career_edu/coaching.dart';
import 'package:career_edu/expertclubacces.dart';
import 'package:career_edu/govtjobs.dart';
import 'package:career_edu/login.dart';
import 'package:career_edu/privatejobsdisplay.dart';
import 'package:career_edu/secpdisplay.dart';
import 'package:career_edu/suigas.dart';
import 'package:career_edu/wasa.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'busydisplay.dart';
import 'contactus.dart';
import 'electercity.dart';
import 'fescoseaerch.dart';

class busy extends StatefulWidget {
  @override
  _busyState createState() => _busyState();
}

class _busyState extends State<busy> with SingleTickerProviderStateMixin {
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
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }
int _selectedTab = 0;

  

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
  currentIndex: _selectedTab,
  onTap: (index) => _changeTab(index),
  selectedItemColor: Colors.blue.shade900,
  unselectedItemColor: Colors.grey,
  items: [
    BottomNavigationBarItem(
      icon: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Access()),
          );
        },
        child: Icon(
          Icons.home,
          color: _selectedTab == 0 ? Colors.blue.shade900 : Colors.grey,
        ),
      ),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => coaching()),
          );
        },
        child: Icon(
          Icons.import_contacts,
          color: _selectedTab == 1 ? Colors.blue.shade900 : Colors.grey,
        ),
      ),
      label: "Coaching",
    ),
    BottomNavigationBarItem(
      icon: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => About()),
          );
        },
        child: Icon(
          Icons.contacts,
          color: _selectedTab == 2 ? Colors.blue.shade900 : Colors.grey,
        ),
      ),
      label: "About",
    ),
    BottomNavigationBarItem(
      icon: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => contactus()),
          );
        },
        child: Icon(
          Icons.info,
          color: _selectedTab == 3 ? Colors.blue.shade900 : Colors.grey,
        ),
      ),
      label: "Contact Us",
    ),
  ],
),
        appBar: PreferredSize(preferredSize: Size.fromHeight(70.0),child: AppBar(
        
        backgroundColor: Colors.blue.shade900,
        centerTitle: false,
        leading: InkWell(
          onTap: () {
             Navigator.push(context, (MaterialPageRoute(builder: (context)=>Access())));
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
          padding: const EdgeInsets.only(top: 0),
          child: Column(
            children: [
              
              Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    
                                  ),
                                  height: 150,
                                  width: 370,
                                  child: Carousel(
                                    images: const [
                                      AssetImage("lib/images/bbs.png",),
                                      AssetImage("lib/images/bbs2.png"),
                                     
                                    ],
                                    borderRadius: true,
                                    radius: const Radius.circular(30),
                                    dotBgColor: Colors.transparent,
                                    animationCurve: Curves.fastOutSlowIn,
                                    animationDuration: const Duration(
                                      milliseconds: 800,
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
                      'Business License',
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
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
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        "FBR, PRA, SECP, IPO Pakistan, Excise and Taxation ",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade600),
                      ),
                    ),
                  ],
                ),
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
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: TabBar(
                    indicator: const BoxDecoration(color: Colors.greenAccent),
                    controller: _tabController,
                    tabs: [
                      Container(
                        height: 100,
                        child: Center(
                          child: Text(
                            'FBR',
                            style: TextStyle(
                                color: _currentIndex == 2
                                    ? Colors.white
                                    : Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'PRA',
                            style: TextStyle(
                                color: _currentIndex == 2
                                    ? Colors.white
                                    : Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'SECP',
                            style: TextStyle(
                                color: _currentIndex == 2
                                    ? Colors.white
                                    : Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'IPO Pakistan',
                            style: TextStyle(
                                color: _currentIndex == 2
                                    ? Colors.white
                                    : Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'Excise and Texation',
                            style: TextStyle(
                                color: _currentIndex == 2
                                    ? Colors.white
                                    : Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
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
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 300,
                                  width: 300,
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
                                        padding: const EdgeInsets.only(top: 0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [],
                                        ),
                                      ),
                                      Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          
                                          Container(
                                            height: 150,
                                            width: 150,
                                            child: Image.asset('lib/images/fbr.png'))],
                                      ),
                                     
                                    
                                     
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
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
                                                            const pvtjobs())));
                                              },
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      (MaterialPageRoute(
                                                          builder: (context) =>
                                                              busydisplay())));
                                                },
                                                child: Container(
                                                  height: 50,
                                                  width: 200,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue.shade900,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: const Center(
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
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.white,
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 320,
                                  width: 320,
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
                                  child: ListView(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [],
                                        ),
                                      ),
                                     Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          
                                          Container(
                                            height: 150,
                                            width: 250,
                                            child: Image.asset('lib/images/pra.png',fit: BoxFit.fill,))],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(top: 0),
                                            child: Text(
                                              "Coming Soon",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.grey),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                         
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
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
                                                            electercity())));
                                              },
                                              child: Container(
                                                height: 50,
                                                width: 200,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue.shade900,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: const Center(
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
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 300,
                                  width: 320,
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
                                        padding: const EdgeInsets.only(top: 0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [],
                                        ),
                                      ),
                                      Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          
                                          Container(
                                            height: 150,
                                            width: 150,
                                            child: Image.asset('lib/images/secp.png'))],
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
                                                            secp())));
                                              },
                                              child: Container(
                                                height: 50,
                                                width: 200,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue.shade900,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: const Center(
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
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.white,
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 300,
                                  width: 320,
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
                                          children: [
                                             Container(
                                               height: 100,
                                               width: 150,
                                               child: Image.asset('lib/images/ipo.png')),
                                          ],
                                        ),
                                      ),
                                     
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(top: 10),
                                            child: Text(
                                              "Coming Soon",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.grey),
                                            ),
                                          ),
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
                                                            const wasa())));
                                              },
                                              child: Container(
                                                height: 50,
                                                width: 200,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue.shade900,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: const Center(
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
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.white,
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
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
                                          children: const [],
                                        ),
                                      ),
                                      Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          
                                          Container(
                                            height: 100,
                                            width: 150,
                                            child: Image.asset('lib/images/doubleex.png'))],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(top: 10),
                                            child: Text(
                                              "Coming Soon ",
                                              style: TextStyle(
                                                  fontSize: 18,
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
                                                            const wasa())));
                                              },
                                              child: Container(
                                                height: 50,
                                                width: 200,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue.shade900,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: const Center(
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
