import 'package:career_edu/coaching.dart';
import 'package:career_edu/expertclubacces.dart';
import 'package:career_edu/govtjobs.dart';
import 'package:career_edu/login.dart';
import 'package:career_edu/privatejobsdisplay.dart';
import 'package:career_edu/suigas.dart';
import 'package:career_edu/wasa.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'about.dart';
import 'contactus.dart';
import 'electercity.dart';
import 'fescoseaerch.dart';

class MyTabs3 extends StatefulWidget {
  @override
  _MyTabs3State createState() => _MyTabs3State();
}

class _MyTabs3State extends State<MyTabs3> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Color> _tabColors = [
    Colors.blue.shade900,
    Colors.blue.shade900,
    Colors.blue.shade900,
  ];
  int _currentIndex = 0;
  int _selectedTab = 0;

  

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
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
        body: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Column(
            children: [
             
              
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      height: 200,
                      width: 370,
                      child: Carousel(
                        images: const [
                          AssetImage(
                            "lib/images/publicsl1.jpg",
                          ),
                          AssetImage(
                            "lib/images/pb1.png",
                          ),
                          AssetImage(
                            "lib/images/pb2.png",
                          ),
                          AssetImage(
                            "lib/images/pb3.png",
                          ),
                          AssetImage(
                            "lib/images/pb4.png",
                          ),
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
               Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Text(
        'Public Services',
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
                        height: 100,
                        child: Center(
                          child: Text(
                            'Arms License/اسلحہ لائسنس',
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
                            'Electercity/بجلی',
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
                            'Sui Gas/سوئی گیس',
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
                            'WASA  /  واسا',
                            style: TextStyle(
                                color: _currentIndex == 2
                                    ? Colors.white
                                    : Colors.white,
                                fontSize: 12,
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
                                              'Arms License',
                                              style: GoogleFonts.lato(
                                                color: Colors.black,
                                                fontSize: 30,
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
                                              "Coming Soon",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                           
                                          ],
                                        ),
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
                                                            pvtjobs())));
                                              },
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      (MaterialPageRoute(
                                                          builder: (context) =>
                                                              pvtjobs())));
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
                                              'Electercity',
                                              style: GoogleFonts.lato(
                                                color: Colors.black,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.italic,
                                              ),
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
                                              'Sui Gas',
                                              style: GoogleFonts.lato(
                                                color: Colors.black,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.italic,
                                              ),
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
                                                            Suigas())));
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
                                              'WASA',
                                              style: GoogleFonts.lato(
                                                color: Colors.black,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.italic,
                                              ),
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
                                                            wasa())));
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
