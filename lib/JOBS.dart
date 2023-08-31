import 'package:career_edu/about.dart';
import 'package:career_edu/expertclubacces.dart';
import 'package:career_edu/govtjobs.dart';
import 'package:career_edu/login.dart';
import 'package:career_edu/overseas.jobs.dart';
import 'package:career_edu/privatejobsdisplay.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'coaching.dart';
import 'contactus.dart';

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
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
       ),
       ),
       
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
          BottomNavigationBarItem(icon: InkWell(
            onTap: () {
              Navigator.push(context, (MaterialPageRoute(builder: (context)=>coaching())));
            },
            child: Icon(Icons.import_contacts)), label: "Coaching"),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                   Navigator.push(context, (MaterialPageRoute(builder: (context)=>About())));
                },
                child: Icon(Icons.contacts)), label: "About"),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                   Navigator.push(context, (MaterialPageRoute(builder: (context)=>contactus())));
                },
                child: Icon(Icons.info)), label: "About"),
          
        ],
      ),
        body: 
        
        
        Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Column(
            children: [
              
              Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    
                                  ),
                                  height: 100,
                                  width: 350,
                                  child: Carousel(
                                    images: const [
                                      AssetImage("lib/images/jobsl.png",),
                                      
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
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
                    'Browse From Top',
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
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
      'Categories',
      style: GoogleFonts.lato(
      color: Colors.black,
      fontSize: 35,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      ),
    ), 
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Expert Club",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text("is an only job seeking platform that offers job seekers",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
                    ),
                ],
              ),
            ),
            
             Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("access to a wide range of employment opportunities in",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
                   
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("private, government, and overseas sectors",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
                   
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("The platform provides job seekers with tools to customize",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
                 
              ],
            ),
             Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("their job search and connect with potential employers",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
                 
              ],
            ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
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
                            'Private Jobs/نجی ملازمتیں',
                            style: TextStyle(
                              
                              color: _currentIndex == 2 ? Colors.white : Colors.white,
                              fontSize: 12
                            ),
                          ),
                        ),
                        
                      ),
                      Container(
                        
                        
                        child: Center(
                          child: Text(
                            'Govt Jobs/سرکاری ملازمتیں',
                            style: TextStyle(
                              color: _currentIndex == 2 ? Colors.white : Colors.white,
                               fontSize: 12
                            ),
                          ),
                        ),
                        
                      ),
                      Container(
                       
                        child: Center(
                          child: Text(
                            'Overseas Jobs/بیرون ملک ملازمتیں',
                            style: TextStyle(
                              color: _currentIndex == 2 ? Colors.white : Colors.white,
                               fontSize: 12
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
                            children: const [
                             
                            ],
                          ),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
      'Private Jobs',
      style: GoogleFonts.lato(
      color: Colors.black,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      ),
    ), 
                            ),
                            
                          ],
                        ),
                         
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                          
                            InkWell(
                              onTap: (){
                                Navigator.push(context, (MaterialPageRoute(builder: (context)=>pvtjobs())));
                              },
                              child: InkWell(
                                onTap: () {
                                   Navigator.push(context, (MaterialPageRoute(builder: (context)=>pvtjobs())));
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
                            children: const [
                             
                            ],
                          ),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child:Text(
      'Government Jobs',
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
                                Navigator.push(context, (MaterialPageRoute(builder: (context)=>MyTabBar2())));
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
                    ),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.white,
                      child: ListView(
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
                            children: const [
                             
                            ],
                          ),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
      'Overseas Jobs',
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
                                Navigator.push(context, (MaterialPageRoute(builder: (context)=>overjobs())));
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
