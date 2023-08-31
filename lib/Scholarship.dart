import 'package:career_edu/expertclubacces.dart';
import 'package:career_edu/globallyscho.dart';
import 'package:career_edu/govtjobs.dart';
import 'package:career_edu/login.dart';
import 'package:career_edu/pakistan.dart';
import 'package:career_edu/pakscho.dart';
import 'package:career_edu/privatejobsdisplay.dart';
import 'package:career_edu/studydisplay.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'globally.dart';

class scholar extends StatefulWidget {
  @override
  _scholarState createState() => _scholarState();
}

class _scholarState extends State<scholar> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Color> _tabColors = [    Colors.blue.shade900,    Colors.blue.shade900,    Colors.blue.shade900,  ];
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
             Navigator.push(context, (MaterialPageRoute(builder: (context)=>study())));
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
        
        Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.only(top: 0),
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
                          'Pakistan Scholarships',
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
                          'Globally Scholarships',
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
                              children: const [
                               
                              ],
                            ),
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
        'Pakistan Scholarship',
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
                             child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Expert Club",style: TextStyle(fontSize: 16,color: Colors.black),),
                                 Text("  provides a platform for job",style: TextStyle(fontSize: 15,color: Colors.grey),),
                              ],
                                                 ),
                           ),
                           Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 0),
                                child: Text("seekers to browse and apply for a wide",style: TextStyle(fontSize: 15,color: Colors.grey),),
                              )
                            ],
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 0),
                                child: Text("range of jobs in the private sector.",style: TextStyle(fontSize: 15,color: Colors.grey),),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                            
                              InkWell(
                                onTap: () {
                                   Navigator.push(context, (MaterialPageRoute(builder: (context)=>pakscho())));
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
                              children: const [
                               
                              ],
                            ),
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child:Text(
        'Globally Scholarships',
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
                           Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text("The Government process starts",style: TextStyle(fontSize: 18,color: Colors.grey),),
                              )
                            ],
                          ),
                           Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 0),
                                child: Text("as soon our clothes go into",style: TextStyle(fontSize: 18,color: Colors.grey),),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                            
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, (MaterialPageRoute(builder: (context)=>globscho())));
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
                 
                ],
              ),
            ),
          ],
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
