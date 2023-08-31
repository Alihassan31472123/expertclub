import 'package:career_edu/JOBS.dart';
import 'package:career_edu/findjobfilter.dart';
import 'package:career_edu/login.dart';
import 'package:career_edu/pepco.dart';
import 'package:career_edu/pesco.dart';
import 'package:career_edu/public_services.dart';
import 'package:career_edu/qesco.dart';
import 'package:career_edu/trsco.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fescoseaerch.dart';
import 'gepco.dart';
import 'hesco.dart';
import 'iesco.dart';
import 'lesco.dart';
import 'mepco.dart';
import 'newcondisplay.dart';

class electercity extends StatefulWidget {
  @override
  _electercityState createState() => _electercityState();
}
List dropDownListData = [
    {"title": "New Connection", "value": "1"},
    {"title": "Web Development", "value": "2"},
    {"title": "Application Development", "value": "3"},
    {"title": "Graphic Designer", "value": "4"},
  ];

  
String defaultValue="";

List dropDownListData2 = [
    {"title": "New Connection", "value": "1"},
    {"title": "Area SDO", "value": "2"},
    {"title": "Billing", "value": "3"},
    {"title": "Complaints", "value": "4"},
  ];

  

String defaultValue2="";

class _electercityState extends State<electercity> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 12, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Electercity'),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
               Navigator.push(context, (MaterialPageRoute(builder: (context)=>MyTabs3())));
            },
            child: Icon(Icons.arrow_back)),
          backgroundColor: Colors.blue.shade900,
         
          
          bottom: TabBar(
            
            controller: _tabController,
            isScrollable: true,
            tabs: [
              Tab(text: 'FESCO'),
              Tab(text: 'LESCO'),
              Tab(text: 'MEPCO'),
               Tab(text: 'PEPCO'),
              Tab(text: 'IESCO'),
              Tab(text: 'GEPCO'),
               Tab(text: 'HESCO'),
              Tab(text: 'PESCO'),
              Tab(text: 'QESCO'),
               Tab(text: 'TESCO'),
              Tab(text: 'SEPCO'),
              Tab(text: 'K ELECTRIC'),
              
            ],
          ),
        ),
        body: TabBarView(
          
          controller: _tabController,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                      height: 600,
                      width: 360,
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
                         
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
          'Fesco',
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
                   
                ],
              ),
             
             
              
              
               Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 30),
                child: InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.all(5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: DropdownButton<String>(value : defaultValue, 
                       isDense: true,
                        isExpanded: true,
                        menuMaxHeight: 350,
                      items: [
                        const DropdownMenuItem(
                          child: Text(
                            "Select One Category",style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          value: ""),
                          ...dropDownListData2.map<DropdownMenuItem<String>>((data) {
                            return DropdownMenuItem(
                                child: Text(data['title']), value: data['value']);
                          }).toList(),
                      ], onChanged: (value){
                        print("selected Value $value");
                        setState(() {
                          defaultValue = value!;
                        });
                                  
                      }),
                    ),
                  ),
                ),
              ),
    
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 300,
           
              child: TextField(
                
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                
              hintText: 'Enter area name',hintStyle: TextStyle(color: Colors.grey),
              
            ),
      
            ),
            ),
          ],
        ),
      ),
      
       Padding(
                    padding: const EdgeInsets.only(left: 0,top: 40),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                  
                        InkWell(
                          onTap: (){
                            Navigator.push(context, (MaterialPageRoute(builder: (context)=>newcon())));
                          },
                          child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius: BorderRadius.circular(35)
                            ),
                            child: Center(child: Text('Explore',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),),
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
                )
                ],
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                      height: 600,
                      width: 360,
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
                         
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
          'Lesco',
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
                   
                ],
              ),
             
             
              
              
               Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 30),
                child: InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.all(5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: DropdownButton<String>(value : defaultValue, 
                       isDense: true,
                        isExpanded: true,
                        menuMaxHeight: 350,
                      items: [
                        const DropdownMenuItem(
                          child: Text(
                            "Select One Category",style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          value: ""),
                          ...dropDownListData2.map<DropdownMenuItem<String>>((data) {
                            return DropdownMenuItem(
                                child: Text(data['title']), value: data['value']);
                          }).toList(),
                      ], onChanged: (value){
                        print("selected Value $value");
                        setState(() {
                          defaultValue = value!;
                        });
                                  
                      }),
                    ),
                  ),
                ),
              ),
    
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 300,
           
              child: TextField(
                
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                
              hintText: 'Enter area name',hintStyle: TextStyle(color: Colors.grey),
              
            ),
      
            ),
            ),
          ],
        ),
      ),
      
       Padding(
                    padding: const EdgeInsets.only(left: 0,top: 40),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                  
                        InkWell(
                          onTap: (){
                            Navigator.push(context, (MaterialPageRoute(builder: (context)=>newcon())));
                          },
                          child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius: BorderRadius.circular(35)
                            ),
                            child: Center(child: Text('Explore',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),),
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
                )
                ],
              ),
            ),
           Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                      height: 600,
                      width: 360,
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
                         
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
          'Mepco',
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
                   
                ],
              ),
             
             
              
              
               Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 30),
                child: InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.all(5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: DropdownButton<String>(value : defaultValue, 
                       isDense: true,
                        isExpanded: true,
                        menuMaxHeight: 350,
                      items: [
                        const DropdownMenuItem(
                          child: Text(
                            "Select One Category",style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          value: ""),
                          ...dropDownListData2.map<DropdownMenuItem<String>>((data) {
                            return DropdownMenuItem(
                                child: Text(data['title']), value: data['value']);
                          }).toList(),
                      ], onChanged: (value){
                        print("selected Value $value");
                        setState(() {
                          defaultValue = value!;
                        });
                                  
                      }),
                    ),
                  ),
                ),
              ),
    
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 300,
           
              child: TextField(
                
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                
              hintText: 'Enter area name',hintStyle: TextStyle(color: Colors.grey),
              
            ),
      
            ),
            ),
          ],
        ),
      ),
      
       Padding(
                    padding: const EdgeInsets.only(left: 0,top: 40),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                  
                        InkWell(
                          onTap: (){
                            Navigator.push(context, (MaterialPageRoute(builder: (context)=>newcon())));
                          },
                          child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius: BorderRadius.circular(35)
                            ),
                            child: Center(child: Text('Explore',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),),
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
                )
                ],
              ),
            ),
           Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                      height: 600,
                      width: 360,
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
                         
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
          'Pepco',
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
                   
                ],
              ),
             
             
              
              
               Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 30),
                child: InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.all(5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: DropdownButton<String>(value : defaultValue, 
                       isDense: true,
                        isExpanded: true,
                        menuMaxHeight: 350,
                      items: [
                        const DropdownMenuItem(
                          child: Text(
                            "Select One Category",style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          value: ""),
                          ...dropDownListData2.map<DropdownMenuItem<String>>((data) {
                            return DropdownMenuItem(
                                child: Text(data['title']), value: data['value']);
                          }).toList(),
                      ], onChanged: (value){
                        print("selected Value $value");
                        setState(() {
                          defaultValue = value!;
                        });
                                  
                      }),
                    ),
                  ),
                ),
              ),
    
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 300,
           
              child: TextField(
                
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                
              hintText: 'Enter area name',hintStyle: TextStyle(color: Colors.grey),
              
            ),
      
            ),
            ),
          ],
        ),
      ),
      
       Padding(
                    padding: const EdgeInsets.only(left: 0,top: 40),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                  
                        InkWell(
                          onTap: (){
                            Navigator.push(context, (MaterialPageRoute(builder: (context)=>newcon())));
                          },
                          child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius: BorderRadius.circular(35)
                            ),
                            child: Center(child: Text('Explore',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),),
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
                )
                ],
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                      height: 600,
                      width: 360,
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
                         
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
          'Iesco',
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
                   
                ],
              ),
             
             
              
              
               Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 30),
                child: InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.all(5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: DropdownButton<String>(value : defaultValue, 
                       isDense: true,
                        isExpanded: true,
                        menuMaxHeight: 350,
                      items: [
                        const DropdownMenuItem(
                          child: Text(
                            "Select One Category",style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          value: ""),
                          ...dropDownListData2.map<DropdownMenuItem<String>>((data) {
                            return DropdownMenuItem(
                                child: Text(data['title']), value: data['value']);
                          }).toList(),
                      ], onChanged: (value){
                        print("selected Value $value");
                        setState(() {
                          defaultValue = value!;
                        });
                                  
                      }),
                    ),
                  ),
                ),
              ),
    
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 300,
           
              child: TextField(
                
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                
              hintText: 'Enter area name',hintStyle: TextStyle(color: Colors.grey),
              
            ),
      
            ),
            ),
          ],
        ),
      ),
      
       Padding(
                    padding: const EdgeInsets.only(left: 0,top: 40),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                  
                        InkWell(
                          onTap: (){
                            Navigator.push(context, (MaterialPageRoute(builder: (context)=>newcon())));
                          },
                          child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius: BorderRadius.circular(35)
                            ),
                            child: Center(child: Text('Explore',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),),
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
                )
                ],
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                      height: 600,
                      width: 360,
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
                         
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
          'Gepco',
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
                   
                ],
              ),
             
             
              
              
               Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 30),
                child: InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.all(5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: DropdownButton<String>(value : defaultValue, 
                       isDense: true,
                        isExpanded: true,
                        menuMaxHeight: 350,
                      items: [
                        const DropdownMenuItem(
                          child: Text(
                            "Select One Category",style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          value: ""),
                          ...dropDownListData2.map<DropdownMenuItem<String>>((data) {
                            return DropdownMenuItem(
                                child: Text(data['title']), value: data['value']);
                          }).toList(),
                      ], onChanged: (value){
                        print("selected Value $value");
                        setState(() {
                          defaultValue = value!;
                        });
                                  
                      }),
                    ),
                  ),
                ),
              ),
    
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 300,
           
              child: TextField(
                
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                
              hintText: 'Enter area name',hintStyle: TextStyle(color: Colors.grey),
              
            ),
      
            ),
            ),
          ],
        ),
      ),
      
       Padding(
                    padding: const EdgeInsets.only(left: 0,top: 40),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                  
                        InkWell(
                          onTap: (){
                            Navigator.push(context, (MaterialPageRoute(builder: (context)=>newcon())));
                          },
                          child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius: BorderRadius.circular(35)
                            ),
                            child: Center(child: Text('Explore',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),),
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
                )
                ],
              ),
            ),
          Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                      height: 600,
                      width: 360,
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
                         
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
          'Hesco',
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
                   
                ],
              ),
             
             
              
              
               Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 30),
                child: InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.all(5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: DropdownButton<String>(value : defaultValue, 
                       isDense: true,
                        isExpanded: true,
                        menuMaxHeight: 350,
                      items: [
                        const DropdownMenuItem(
                          child: Text(
                            "Select One Category",style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          value: ""),
                          ...dropDownListData2.map<DropdownMenuItem<String>>((data) {
                            return DropdownMenuItem(
                                child: Text(data['title']), value: data['value']);
                          }).toList(),
                      ], onChanged: (value){
                        print("selected Value $value");
                        setState(() {
                          defaultValue = value!;
                        });
                                  
                      }),
                    ),
                  ),
                ),
              ),
    
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 300,
           
              child: TextField(
                
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                
              hintText: 'Enter area name',hintStyle: TextStyle(color: Colors.grey),
              
            ),
      
            ),
            ),
          ],
        ),
      ),
      
       Padding(
                    padding: const EdgeInsets.only(left: 0,top: 40),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                  
                        InkWell(
                          onTap: (){
                            Navigator.push(context, (MaterialPageRoute(builder: (context)=>newcon())));
                          },
                          child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius: BorderRadius.circular(35)
                            ),
                            child: Center(child: Text('Explore',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),),
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
                )
                ],
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                      height: 600,
                      width: 360,
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
                         
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
          'Pesco',
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
                   
                ],
              ),
             
             
              
              
               Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 30),
                child: InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.all(5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: DropdownButton<String>(value : defaultValue, 
                       isDense: true,
                        isExpanded: true,
                        menuMaxHeight: 350,
                      items: [
                        const DropdownMenuItem(
                          child: Text(
                            "Select One Category",style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          value: ""),
                          ...dropDownListData2.map<DropdownMenuItem<String>>((data) {
                            return DropdownMenuItem(
                                child: Text(data['title']), value: data['value']);
                          }).toList(),
                      ], onChanged: (value){
                        print("selected Value $value");
                        setState(() {
                          defaultValue = value!;
                        });
                                  
                      }),
                    ),
                  ),
                ),
              ),
    
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 300,
           
              child: TextField(
                
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                
              hintText: 'Enter area name',hintStyle: TextStyle(color: Colors.grey),
              
            ),
      
            ),
            ),
          ],
        ),
      ),
      
       Padding(
                    padding: const EdgeInsets.only(left: 0,top: 40),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                  
                        InkWell(
                          onTap: (){
                            Navigator.push(context, (MaterialPageRoute(builder: (context)=>newcon())));
                          },
                          child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius: BorderRadius.circular(35)
                            ),
                            child: Center(child: Text('Explore',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),),
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
                )
                ],
              ),
            ),
           Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                      height: 600,
                      width: 360,
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
                         
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
          'Qesco',
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
                   
                ],
              ),
             
             
              
              
               Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 30),
                child: InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.all(5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: DropdownButton<String>(value : defaultValue, 
                       isDense: true,
                        isExpanded: true,
                        menuMaxHeight: 350,
                      items: [
                        const DropdownMenuItem(
                          child: Text(
                            "Select One Category",style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          value: ""),
                          ...dropDownListData2.map<DropdownMenuItem<String>>((data) {
                            return DropdownMenuItem(
                                child: Text(data['title']), value: data['value']);
                          }).toList(),
                      ], onChanged: (value){
                        print("selected Value $value");
                        setState(() {
                          defaultValue = value!;
                        });
                                  
                      }),
                    ),
                  ),
                ),
              ),
    
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 300,
           
              child: TextField(
                
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                
              hintText: 'Enter area name',hintStyle: TextStyle(color: Colors.grey),
              
            ),
      
            ),
            ),
          ],
        ),
      ),
      
       Padding(
                    padding: const EdgeInsets.only(left: 0,top: 40),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                  
                        InkWell(
                          onTap: (){
                            Navigator.push(context, (MaterialPageRoute(builder: (context)=>newcon())));
                          },
                          child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius: BorderRadius.circular(35)
                            ),
                            child: Center(child: Text('Explore',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),),
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
                )
                ],
              ),
            ),
           Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                      height: 600,
                      width: 360,
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
                         
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
          'Tesco',
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
                   
                ],
              ),
             
             
              
              
               Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 30),
                child: InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.all(5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: DropdownButton<String>(value : defaultValue, 
                       isDense: true,
                        isExpanded: true,
                        menuMaxHeight: 350,
                      items: [
                        const DropdownMenuItem(
                          child: Text(
                            "Select One Category",style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          value: ""),
                          ...dropDownListData2.map<DropdownMenuItem<String>>((data) {
                            return DropdownMenuItem(
                                child: Text(data['title']), value: data['value']);
                          }).toList(),
                      ], onChanged: (value){
                        print("selected Value $value");
                        setState(() {
                          defaultValue = value!;
                        });
                                  
                      }),
                    ),
                  ),
                ),
              ),
    
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 300,
           
              child: TextField(
                
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                
              hintText: 'Enter area name',hintStyle: TextStyle(color: Colors.grey),
              
            ),
      
            ),
            ),
          ],
        ),
      ),
      
       Padding(
                    padding: const EdgeInsets.only(left: 0,top: 40),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                  
                        InkWell(
                          onTap: (){
                            Navigator.push(context, (MaterialPageRoute(builder: (context)=>newcon())));
                          },
                          child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius: BorderRadius.circular(35)
                            ),
                            child: Center(child: Text('Explore',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),),
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
                )
                ],
              ),
            ),
           Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                      height: 600,
                      width: 360,
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
                         
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
          'Sepco',
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
                   
                ],
              ),
             
             
              
              
               Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 30),
                child: InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.all(5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: DropdownButton<String>(value : defaultValue, 
                       isDense: true,
                        isExpanded: true,
                        menuMaxHeight: 350,
                      items: [
                        const DropdownMenuItem(
                          child: Text(
                            "Select One Category",style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          value: ""),
                          ...dropDownListData2.map<DropdownMenuItem<String>>((data) {
                            return DropdownMenuItem(
                                child: Text(data['title']), value: data['value']);
                          }).toList(),
                      ], onChanged: (value){
                        print("selected Value $value");
                        setState(() {
                          defaultValue = value!;
                        });
                                  
                      }),
                    ),
                  ),
                ),
              ),
    
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 300,
           
              child: TextField(
                
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                
              hintText: 'Enter area name',hintStyle: TextStyle(color: Colors.grey),
              
            ),
      
            ),
            ),
          ],
        ),
      ),
      
       Padding(
                    padding: const EdgeInsets.only(left: 0,top: 40),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                  
                        InkWell(
                          onTap: (){
                            Navigator.push(context, (MaterialPageRoute(builder: (context)=>newcon())));
                          },
                          child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius: BorderRadius.circular(35)
                            ),
                            child: Center(child: Text('Explore',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),),
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
                )
                ],
              ),
            ),
           Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
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
                  'K Electric Supply Company',
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 20,
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
                              children: [
                                Text("Expert Club",style: TextStyle(fontSize: 16,color: Colors.black),),
                                 Text("  provides a platform for job",style: TextStyle(fontSize: 15,color: Colors.grey),),
                              ],
                                                 ),
                           ),
                           Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Text("seekers to browse and apply for a wide",style: TextStyle(fontSize: 15,color: Colors.grey),),
                              )
                            ],
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 0),
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
                                   Navigator.push(context, (MaterialPageRoute(builder: (context)=>electercity())));
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
                )
                ],
              ),
            ),
          
            
          ],
        ),
      ),
    );
  }
}
