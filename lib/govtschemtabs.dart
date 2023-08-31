import 'package:career_edu/ehsaas.dart';
import 'package:career_edu/expertclubacces.dart';
import 'package:career_edu/govtjobs.dart';
import 'package:career_edu/login.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bispsearch.dart';
import 'govtloans.dart';
import 'healthsearch.dart';

class MyTabs2 extends StatefulWidget {
  @override
  _MyTabs2State createState() => _MyTabs2State();
}

class _MyTabs2State extends State<MyTabs2> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Color> _tabColors = [
    Colors.blue.shade900,
    Colors.blue.shade900,
    Colors.blue.shade900,
  ];
  int _currentIndex = 0;
  int _selectedTab = 0;

  List _pages = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("About"),
    ),
    Center(
      child: Text("Products"),
    ),
    Center(
      child: Text("Contact"),
    ),
    Center(
      child: Text("Settings"),
    ),
  ];

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
            
            icon: InkWell(
              onTap: () {
                Navigator.push(context, (MaterialPageRoute(builder: (context)=>Access())));
              },
              child: Icon(Icons.home)), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.import_contacts), label: "Coaching"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts), label: "About"),
          BottomNavigationBarItem(
              icon: Icon(Icons.info), label: "About"),
          
        ],
      ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
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
                      height: 150,
                      width: 350,
                      child: Carousel(
                        images: const [
                          AssetImage(
                            "lib/images/sc1.jpg",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Government Schemes',
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
                padding: const EdgeInsets.only(top: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "of scheme programs to its citizens.",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600),
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
                            'Govt Loans/حکومتی قرضے',
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
                            'BISP/بے نظیر انکم سپورٹ پروگرام',
                            style: TextStyle(
                                color: _currentIndex == 2
                                    ? Colors.white
                                    : Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'Health Card/صحت کارڈ',
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
                            'Ehsaas Programe/احساس پروگرام',
                            style: TextStyle(
                                color: _currentIndex == 2
                                    ? Colors.white
                                    : Colors.white,
                                fontSize: 9,
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
                                              'Government Loans',
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
                                              "Expert Club",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              "  provides a platform for job",
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
                                              "seekers to browse and apply for a wide",
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
                                              "range of jobs in the private sector.",
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
                                                            Govtloans())));
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
                                              'BISP',
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
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                              "Benazir icome support program",
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
                                                            Bisp())));
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
                                              'Health Card',
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
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                              "The Government process starts",
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
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 0),
                                            child: Text(
                                              "as soon our clothes go into",
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
                                                            health())));
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
                                            ),
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
                                              'Ehsaas Prgrame',
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
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                              "Overseas jobs process starts",
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
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 0),
                                            child: Text(
                                              "as soon our clothes go into",
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
                                                            ehsaas())));
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
