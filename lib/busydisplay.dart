import 'package:career_edu/JOBS.dart';
import 'package:career_edu/business.dart';
import 'package:career_edu/findjobfilter.dart';
import 'package:career_edu/login.dart';
import 'package:career_edu/public_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'electercity.dart';
import 'fescoseaerch.dart';
import 'gservices.dart';

class busydisplay extends StatefulWidget {
  @override
  _busydisplayState createState() => _busydisplayState();
}

class _busydisplayState extends State<busydisplay>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
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
          title: const Text('Fedral board of Revenue'),
          centerTitle: true,
          leading: InkWell(
              onTap: () {
                Navigator.push(context,
                    (MaterialPageRoute(builder: (context) => busy())));
              },
              child: const Icon(Icons.arrow_back)),
          backgroundColor: Colors.blue.shade900,
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: const [
              Tab(text: 'NTN'),
              Tab(text: 'STRN'),
              Tab(text: 'Tax Card'),
              Tab(text: 'Income Tax Odinance'),
              Tab(text: 'Sales Tax Act'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'National Tax Number',
                                    style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                margin: const EdgeInsets.only(left: 20, right: 20),
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: 'Select',
                                    isExpanded: true,
                                    items: const [
                                      DropdownMenuItem(
                                        value: 'Select',
                                        child: Text('Select'),
                                      ),
                                      DropdownMenuItem(
                                        value: '1',
                                        child: Text('individual'),
                                      ),
                                      DropdownMenuItem(
                                        value: '2',
                                        child: Text('AOP'),
                                      ),
                                    ],
                                    onChanged: (String? value) {
                                      
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: SizedBox(
                                height: 50,
                                width: 80,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue
                                        .shade900, // Set the background color
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                 busydisplay()));
                                    // Navigate to the main screen or desired destination
                                  },
                                  child: const Text('Check'),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 10),
                              child: Row(
                                children: const [
                                  Text(
                                    'Procedure',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "One example of a loan is a car loan. This is a closed-end loan,",
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
                              padding: const EdgeInsets.only(top: 0, left: 20),
                              child: Row(
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
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Row(
                                children: const [
                                  Text(
                                    'How to Apply',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "One example of a loan is a car loan. This is a closed-end loan,",
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
                              padding: const EdgeInsets.only(top: 0, left: 20),
                              child: Row(
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
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Row(
                                children: const [
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "One example of a loan is a car loan. This is a closed-end loan,",
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
                              padding: const EdgeInsets.only(top: 0, left: 20),
                              child: Row(
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
                              padding: const EdgeInsets.only(top: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 200,
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
                                    child: const Center(
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
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: const Center(
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
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Sales Tax Registeration Number',
                                    style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 10),
                              child: Row(
                                children: const [
                                  Text(
                                    'Procedure',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "One example of a loan is a car loan. This is a closed-end loan,",
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
                              padding: const EdgeInsets.only(top: 0, left: 20),
                              child: Row(
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
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Row(
                                children: const [
                                  Text(
                                    'How to Apply',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "One example of a loan is a car loan. This is a closed-end loan,",
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
                              padding: const EdgeInsets.only(top: 0, left: 20),
                              child: Row(
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
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Row(
                                children: const [
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "One example of a loan is a car loan. This is a closed-end loan,",
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
                              padding: const EdgeInsets.only(top: 0, left: 20),
                              child: Row(
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
                              padding: const EdgeInsets.only(top: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 200,
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
                                    child: const Center(
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
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: const Center(
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
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Tax Card',
                                    style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                margin: const EdgeInsets.only(left: 20, right: 20),
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: 'Select',
                                    isExpanded: true,
                                    items: const [
                                      DropdownMenuItem(
                                        value: 'Select',
                                        child: Text('Select'),
                                      ),
                                      DropdownMenuItem(
                                        value: '1',
                                        child: Text('2017'),
                                      ),
                                      DropdownMenuItem(
                                        value: '2',
                                        child: Text('2018'),
                                      ),
                                      DropdownMenuItem(
                                        value: '1',
                                        child: Text('2019'),
                                      ),
                                      DropdownMenuItem(
                                        value: '2',
                                        child: Text('2020'),
                                      ),
                                      DropdownMenuItem(
                                        value: '1',
                                        child: Text('2021'),
                                      ),
                                      DropdownMenuItem(
                                        value: '2',
                                        child: Text('2022'),
                                      ),
                                      DropdownMenuItem(
                                        value: '2',
                                        child: Text('2023'),
                                      ),
                                    ],
                                    onChanged: (String? value) {},
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: SizedBox(
                                height: 50,
                                width: 80,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue
                                        .shade900, // Set the background color
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                 busydisplay()));
                                    // Navigate to the main screen or desired destination
                                  },
                                  child: const Text('Check'),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 10),
                              child: Row(
                                children: const [
                                  Text(
                                    'Procedure',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "One example of a loan is a car loan. This is a closed-end loan,",
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
                              padding: const EdgeInsets.only(top: 0, left: 20),
                              child: Row(
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
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Row(
                                children: const [
                                  Text(
                                    'How to Apply',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "One example of a loan is a car loan. This is a closed-end loan,",
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
                              padding: const EdgeInsets.only(top: 0, left: 20),
                              child: Row(
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
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Row(
                                children: const [
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "One example of a loan is a car loan. This is a closed-end loan,",
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
                              padding: const EdgeInsets.only(top: 0, left: 20),
                              child: Row(
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
                              padding: const EdgeInsets.only(top: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 200,
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
                                    child: const Center(
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
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: const Center(
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
                ],
              ),
            ),
            
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                   Padding(
                              padding: const EdgeInsets.only(top: 10, left: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Income Tax Ordinance',
                                    style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                             Container(
                              height: 70,
                              width: 350,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey.shade200,
                                    offset: new Offset(5.5, 5.5,),
                                  )
                                ]
                                
                                       
                              ),
                              child: ListTile(
                                            title: const Text(

                                                'Income Tax Ordinance, 2001 amended up to 30th June 2022'),
                                            onTap: () => launch(
                                               "https://download1.fbr.gov.pk/Docs/20227141271849173IncomeTaxOrdinance2001Amendedupto30june2022.pdf"),
                                          ),
                            ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                            Container(
                              height: 50,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade900,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey.shade200,
                                    offset: new Offset(5.5, 5.5,),
                                  )
                                ]
                                
                                       
                              ),
                              child: ListTile(
                                            title: const Center(
                                              child: Text(
                                                  'Check',style: TextStyle(color: Colors.white,),),
                                            ),
                                            onTap: () => launch(
                                                "https://download1.fbr.gov.pk/Docs/20227141271849173IncomeTaxOrdinance2001Amendedupto30june2022.pdf"),
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
             Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                   Padding(
                              padding: const EdgeInsets.only(top: 10, left: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Sales Tax Act',
                                    style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                             Container(
                              height: 70,
                              width: 350,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey.shade200,
                                    offset: new Offset(5.5, 5.5,),
                                  )
                                ]
                                
                                       
                              ),
                              child: ListTile(
                                            title: const Text(

                                                'Income Tax Ordinance, 2001 amended up to 30th June 2022'),
                                            onTap: () => launch(
                                                "https://download1.fbr.gov.pk/Docs/2023371732748541SalesTaxAct,1990withIndexupdatedupto23.02.2023.pdf"),
                                          ),
                            ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                            Container(
                              height: 50,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade900,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey.shade200,
                                    offset: new Offset(5.5, 5.5,),
                                  )
                                ]
                                
                                       
                              ),
                              child: ListTile(
                                            title: const Center(
                                              child: Text(
                                                  'Check',style: TextStyle(color: Colors.white,),),
                                            ),
                                            onTap: () => launch(
                                                "https://download1.fbr.gov.pk/Docs/2023371732748541SalesTaxAct,1990withIndexupdatedupto23.02.2023.pdf"),
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
}

Widget _listItem(String title, String url) {
  return ListTile(
    title: Text(title),
    onTap: () async {
      if (await canLaunch(url)) {
        await launch(url);
      }
    },
  );
}
