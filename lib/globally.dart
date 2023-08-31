import 'package:career_edu/fescoseaerch.dart';
import 'package:career_edu/ssgc.dart';
import 'package:career_edu/studydisplay.dart';
import 'package:career_edu/wasa.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'sngpl.dart';

class globaly extends StatefulWidget {
  const globaly({super.key});

  @override
  State<globaly> createState() => _globalyState();
}

class _globalyState extends State<globaly> {
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
        body: ListView(
          children: [
           
            Padding(
              padding: const EdgeInsets.only(top: 10),
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
                          "lib/images/37.png",
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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width:
                                  double.infinity, // Adjust the width as needed
                              constraints: BoxConstraints(maxWidth: 350),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: 'Select Country',
                                        isExpanded: true,
                                        items: const [
                                          DropdownMenuItem(
                                            value: 'Select Country',
                                            child: Text('Select Country'),
                                          ),
                                          DropdownMenuItem(
                                            value: '1',
                                            child: Text('UAE'),
                                          ),
                                          DropdownMenuItem(
                                            value: '2',
                                            child: Text('NORWAY'),
                                          ),
                                          DropdownMenuItem(
                                            value: '3',
                                            child: Text('AMERICA'),
                                          ),
                                          DropdownMenuItem(
                                            value: '4',
                                            child: Text('UNITED KINGDOM'),
                                          ),
                                          DropdownMenuItem(
                                            value: '5',
                                            child: Text('UNITED STATE'),
                                          ),
                                          DropdownMenuItem(
                                            value: '6',
                                            child: Text('CANADA'),
                                          ),
                                          DropdownMenuItem(
                                            value: '7',
                                            child: Text('QATAR'),
                                          ),
                                        ],
                                        onChanged: (String? value) {},
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 8.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: 'Select university',
                                        isExpanded: true,
                                        items: const [
                                          DropdownMenuItem(
                                            value: 'Select university',
                                            child: Text('Select university'),
                                          ),
                                          DropdownMenuItem(
                                            value: '1',
                                            child: Text(
                                                'Government College University Faisalabad: GCUF'),
                                          ),
                                          DropdownMenuItem(
                                            value: '2',
                                            child: Text(
                                                'University of the Punjab'),
                                          ),
                                          DropdownMenuItem(
                                            value: '3',
                                            child: Text(
                                                'International Islamic University Islamabad (IIUI)'),
                                          ),
                                          DropdownMenuItem(
                                            value: '4',
                                            child: Text('GIFT University'),
                                          ),
                                          DropdownMenuItem(
                                            value: '5',
                                            child: Text(
                                                'The Islamia University of Bahawalpur: IUB'),
                                          ),
                                          DropdownMenuItem(
                                            value: '6',
                                            child: Text('University of Jhang'),
                                          ),
                                          DropdownMenuItem(
                                            value: '7',
                                            child:
                                                Text('University of Karachi'),
                                          ),
                                        ],
                                        onChanged: (String? value) {},
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 8.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: 'Select program',
                                        isExpanded: true,
                                        items: const [
                                          DropdownMenuItem(
                                            value: 'Select program',
                                            child: Text('Select program'),
                                          ),
                                          DropdownMenuItem(
                                            value: '1',
                                            child:
                                                Text('Undergraduate programs'),
                                          ),
                                          DropdownMenuItem(
                                            value: '2',
                                            child:
                                                Text('Postgraduate programs'),
                                          ),
                                          DropdownMenuItem(
                                            value: '3',
                                            child: Text('PHD programs'),
                                          ),
                                        ],
                                        onChanged: (String? value) {},
                                      ),
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
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                (MaterialPageRoute(
                                    builder: (context) => globaly())));
                          },
                          child: Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade900,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                'Check',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 10),
                               child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Text('Programs List',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(top: 10,left: 10),
                               child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Container(
                                    width: 100,
                                                                
                                    child: Text('Programs',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                   ),
                                   Container(
                                    width: 110,
                                                                
                                    child: Text('Link',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                   ),
                                 ],
                               ),
                             ),
                             SizedBox(
                              height: 10,
                             ),
                            Table(
                              children: [
                                
                                
                                TableRow(
                                  children: [
                                     TableCell(
                                      child:
                                          Text('BS Defence Strategic Studies'),
                                    ),
                                    TableCell(
                                      child: InkWell(
                                        onTap: () {
                                          // Handle link tap
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 50,right: 10),
                                          child: Container(
                                             height: 40,
                                             width: 20,
                                              decoration: BoxDecoration(
                                                color: Colors.blue.shade900,
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              child: Center(
                                                child: const Text(
                                                  'Visit',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    decoration: TextDecoration.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // Add more rows here
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            children: [
                              Table( 
                                children: [
                                  TableRow(
                                    children: [
                                      const TableCell(
                                        child:
                                            Text('BS Defence Chemistry Studies'),
                                      ),
                                      TableCell(
                                        child: InkWell(
                                          onTap: () {
                                            // Handle link tap
                                          },
                                          child: Padding(
                                          padding: const EdgeInsets.only(left: 50,right: 10),
                                          child: Container(
                                             height: 40,
                                             width: 20,
                                              decoration: BoxDecoration(
                                                color: Colors.blue.shade900,
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              child: Center(
                                                child: const Text(
                                                  'Visit',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    decoration: TextDecoration.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // Add more rows here
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            children: [
                              Table(
                                children: [
                                  TableRow(
                                    children: [
                                      const TableCell(
                                        child: Text('BS Biology Studies'),
                                      ),
                                      TableCell(
                                        child: InkWell(
                                          onTap: () {
                                            // Handle link tap
                                          },
                                          child: Padding(
                                          padding: const EdgeInsets.only(left: 50,right: 10),
                                          child: Container(
                                             height: 40,
                                             width: 20,
                                              decoration: BoxDecoration(
                                                color: Colors.blue.shade900,
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              child: Center(
                                                child: const Text(
                                                  'Visit',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    decoration: TextDecoration.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // Add more rows here
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:  10),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            children: [
                              Table(
                                children: [
                                  TableRow(
                                    children: [
                                      const TableCell(
                                        child:
                                            Text('BS Computer science Studies'),
                                      ),
                                      TableCell(
                                        child: InkWell(
                                          onTap: () {
                                            // Handle link tap
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 50,right: 10),
                                            child: Container(
                                               height: 40,
                                               width: 20,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue.shade900,
                                                  borderRadius:
                                                      BorderRadius.circular(4.0),
                                                ),
                                                child: Center(
                                                  child: const Text(
                                                    'Visit',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      decoration: TextDecoration.none,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // Add more rows here
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            children: [
                              Table(
                                children: [
                                  TableRow(
                                    children: [
                                      const TableCell(
                                        child: Text('BS  physiology Studies'),
                                      ),
                                      TableCell(
                                        child: InkWell(
                                          onTap: () {
                                            // Handle link tap
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 50,right: 10),
                                            child: Container(
                                               height: 40,
                                               width: 20,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue.shade900,
                                                  borderRadius:
                                                      BorderRadius.circular(4.0),
                                                ),
                                                child: Center(
                                                  child: const Text(
                                                    'Visit',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      decoration: TextDecoration.none,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // Add more rows here
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            children: [
                              Table(
                                children: [
                                  TableRow(
                                    children: [
                                      const TableCell(
                                        child: Text('BS Bio technology Studies'),
                                      ),
                                      TableCell(
                                        child: InkWell(
                                          onTap: () {
                                            // Handle link tap
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 50,right: 10),
                                            child: Container(
                                               height: 40,
                                               width: 20,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue.shade900,
                                                  borderRadius:
                                                      BorderRadius.circular(4.0),
                                                ),
                                                child: Center(
                                                  child: const Text(
                                                    'Visit',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      decoration: TextDecoration.none,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // Add more rows here
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 200,
                        width: 300,
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          new BoxShadow(
                            color: Colors.grey.shade200,
                            offset: new Offset(
                              10.10,
                              10.10,
                            ),
                          ),
                        ]),
                        child: Center(
                          child: Text(
                            'Video Section',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 340,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            'Hire Assistant',
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
                Container(
                  height: 100,
                  width: 100,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
