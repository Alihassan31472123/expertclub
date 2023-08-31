import 'package:career_edu/about.dart';
import 'package:career_edu/coaching.dart';
import 'package:career_edu/contactus.dart';
import 'package:career_edu/expertclubacces.dart';
import 'package:career_edu/govtjobs.dart';
import 'package:career_edu/login.dart';
import 'package:career_edu/pakistan.dart';
import 'package:career_edu/privatejobsdisplay.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Scholarship.dart';
import 'globally.dart';

class study extends StatefulWidget {
  @override
  _studyState createState() => _studyState();
}

class _studyState extends State<study> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Color> _tabColors = [    Colors.blue.shade900,    Colors.blue.shade900,    Colors.blue.shade900,  ];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
        body: 
        
        Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Column(
            children: [
              
              Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.pink.shade100,
                                    borderRadius: BorderRadius.circular(30),
                                    
                                  ),
                                  height: 200,
                                  width: 370,
                                  child: Carousel(
                                    images: const [
                                      AssetImage("lib/images/33.png",),
                                      
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
          'Study Avenue',
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
                    indicator: BoxDecoration(
                      color: Colors.greenAccent
                    ),
                    controller: _tabController,
                    tabs: [
                      Container(
                        height: 100,
                       
                        
                        child: Center(
                          child: Text(
                            'Pakistan',
                            style: TextStyle(
                              
                              color: _currentIndex == 2 ? Colors.white : Colors.white,
                              fontSize: 15
                            ),
                          ),
                        ),
                        
                      ),
                      Container(
                        
                        
                        child: Center(
                          child: Text(
                            'Globally',
                            style: TextStyle(
                              color: _currentIndex == 2 ? Colors.white : Colors.white,
                               fontSize: 15
                            ),
                          ),
                        ),
                        
                      ),
                      Container(
                       
                        child: Center(
                          child: Text(
                            'Scholarship',
                            style: TextStyle(
                              color: _currentIndex == 2 ? Colors.white : Colors.white,
                               fontSize: 15
                            ),
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
                          Column(
                            children: [
                             Padding(
               padding: const EdgeInsets.only(top: 20),
               child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 400,
                    width: 350,
                    decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.grey.shade300,
                              offset: new Offset(10.10, 10.10,),
                            )
                          ]
                          
                 
                    ),
                    
                    child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                 
                                ],
                              ),
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
          'Pakistan',
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
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                
                              
                                InkWell(
                                  onTap: () {
                                     Navigator.push(context, (MaterialPageRoute(builder: (context)=>pak())));
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.blue.shade900,
                                      borderRadius: BorderRadius.circular(10),
                                      
                                    ),
                                    child: Center(child: Text('EXPLORE/دریافت کریں',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 15),),),
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
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.white,
                      child: ListView(
                        children: [
                          Column(
                            children: [
                             Padding(
               padding: const EdgeInsets.only(top: 20),
               child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 400,
                    width: 350,
                    decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.grey.shade300,
                              offset: new Offset(10.10, 10.10,),
                            )
                          ]
                          
                 
                    ),
                    
                    child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                 
                                ],
                              ),
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child:Text(
          'Globally',
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
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                
                              
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, (MaterialPageRoute(builder: (context)=>globaly())));
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.blue.shade900,
                                      borderRadius: BorderRadius.circular(10),
                                      
                                    ),
                                    child: Center(child: Text('EXPLORE/دریافت کریں',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17),),),
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
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.white,
                      child: ListView(
                        children: [
                          Column(
                            children: [
                             Padding(
               padding: const EdgeInsets.only(top: 20),
               child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 400,
                    width: 350,
                    decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.grey.shade300,
                              offset: new Offset(10.10, 10.10,),
                            )
                          ]
                          
                 
                    ),
                    
                    child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                 
                                ],
                              ),
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
          'Scholarships',
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
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                
                              
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, (MaterialPageRoute(builder: (context)=>scholar())));
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.blue.shade900,
                                      borderRadius: BorderRadius.circular(10),
                                      
                                    ),
                                    child: Center(child: Text('EXPLORE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17),),),
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
