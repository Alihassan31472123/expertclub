import 'package:career_edu/expertclubacces.dart';
import 'package:career_edu/govtjobs.dart';
import 'package:career_edu/login.dart';
import 'package:career_edu/suigas.dart';

import 'package:career_edu/wasa.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'electercity.dart';
import 'fescoseaerch.dart';
import 'gservices.dart';

class pasport extends StatefulWidget {
  @override
  _pasportState createState() => _pasportState();
}

class _pasportState extends State<pasport> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Color> _tabColors = [
    Colors.blue.shade900,
    Colors.blue.shade900,
    Colors.blue.shade900,
  ];

  int _currentIndex = 0;
  List dropDownListData4 = [
    {"title": "Pakistan", "value": "1"},
    {"title": "UAE", "value": "2"},
    {"title": "Canada", "value": "3"},
    {"title": "Qatar", "value": "4"},
  ];

  String defaultValue4 = "";

  List dropDownListData2 = [
    {"title": "Executive Offices", "value": "1"},
    {"title": "Passport Offices", "value": "2"},
  ];

  String defaultValue2 = "";

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
             Navigator.push(context, (MaterialPageRoute(builder: (context)=>gservices())));
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
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
            
                 
                 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Immigration & Passport',
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
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "The Government",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        "of Pakistan offers a variety",
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
                            'Passport',
                            style: TextStyle(
                                color: _currentIndex == 2
                                    ? Colors.white
                                    : Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'Visa on Arrival',
                            style: TextStyle(
                                color: _currentIndex == 2
                                    ? Colors.white
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'Visa Application',
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
                            'Fee Structure',
                            style: TextStyle(
                                color: _currentIndex == 2
                                    ? Colors.white
                                    : Colors.white,
                                fontSize: 13,
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
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Passport',
                                  style: GoogleFonts.lato(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
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
                                Container(
                                  height: 50,
                                  width: 360,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(Icons.search),
                                      hintText: 'Enter City Name',
                                      hintStyle: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 30),
                            child: InputDecorator(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                contentPadding: const EdgeInsets.all(5),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: DropdownButton<String>(
                                      value: defaultValue2,
                                      isDense: true,
                                      isExpanded: true,
                                      menuMaxHeight: 350,
                                      items: [
                                        const DropdownMenuItem(
                                            child: Text(
                                              "Select Services",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            value: ""),
                                        ...dropDownListData2
                                            .map<DropdownMenuItem<String>>(
                                                (data) {
                                          return DropdownMenuItem(
                                              child: Text(data['title']),
                                              value: data['value']);
                                        }).toList(),
                                      ],
                                      onChanged: (value) {
                                        print("selected Value $value");
                                        setState(() {
                                          defaultValue2 = value!;
                                        });
                                      }),
                                ),
                              ),
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
                                            builder: (context) => Login())));
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
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Similar Particular or particular slight differenece',
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Similar Particular or particular slight differenece',
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Similar Particular or particular slight differenece',
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Similar Particular or particular slight differenece',
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          )
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
                            padding: const EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Visa on Arrival',
                                  style: GoogleFonts.lato(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 30),
                            child: InputDecorator(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                contentPadding: const EdgeInsets.all(5),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: DropdownButton<String>(
                                      value: defaultValue4,
                                      isDense: true,
                                      isExpanded: true,
                                      menuMaxHeight: 350,
                                      items: [
                                        const DropdownMenuItem(
                                            child: Text(
                                              "Select Country",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            value: ""),
                                        ...dropDownListData4
                                            .map<DropdownMenuItem<String>>(
                                                (data) {
                                          return DropdownMenuItem(
                                              child: Text(data['title']),
                                              value: data['value']);
                                        }).toList(),
                                      ],
                                      onChanged: (value) {
                                        print("selected Value $value");
                                        setState(() {
                                          defaultValue4 = value!;
                                        });
                                      }),
                                ),
                              ),
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
                            padding: const EdgeInsets.only(top: 10, left: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Visa Application',
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
                              children: [
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
                              children: [
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
                              children: [
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
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
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
                                      'Download PDF',
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
                    ),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.white,
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Application Fee',
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
                            padding: const EdgeInsets.only(top: 10, left: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Fees for Renewal of Passport',
                                  style: GoogleFonts.lato(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Fees for 05 Years Validity',
                                  style: GoogleFonts.lato(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Container(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                  columns: const [
                                    DataColumn(
                                        label: Text(
                                      'Categories/Type',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text(
                                      'Fee',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text(
                                      'Services Charges',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text(
                                      'Total(excel taxes)',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ],
                                  rows: const [
                                    DataRow(cells: [
                                      DataCell(Text('Normal(38-Pages)')),
                                      DataCell(Text('Rs3000/-')),
                                      DataCell(Text('')),
                                      DataCell(Text('Rs12000/-')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(
                                        Text('Urgent(38-Pages)'),
                                      ),
                                      DataCell(
                                        Text('Rs5000/-'),
                                      ),
                                      DataCell(
                                        Text(''),
                                      ),
                                      DataCell(
                                        Text('Rs12000/-'),
                                      ),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Normal(72-Pages)')),
                                      DataCell(Text('Rs10000/-')),
                                      DataCell(Text('Rs 2500')),
                                      DataCell(Text('Rs12000/-')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Urgent(72-Pages)')),
                                      DataCell(Text('Rs12000/-')),
                                      DataCell(Text('(+ Appliceable Taxes)')),
                                      DataCell(Text('Rs12000/-')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Normal(100-Pages)')),
                                      DataCell(Text('Rs11000/-')),
                                      DataCell(Text('')),
                                      DataCell(Text('Rs12000/-')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Urgent(100-Pages)')),
                                      DataCell(Text('Rs12000/-')),
                                      DataCell(Text('')),
                                      DataCell(Text('Rs12000/-')),
                                    ]),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Fees for 10 Years Validity',
                                  style: GoogleFonts.lato(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Container(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                  columns: const [
                                    DataColumn(
                                        label: Text(
                                      'Categories/Type',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text(
                                      'Fee',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text(
                                      'Services Charges',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text(
                                      'Total(excel taxes)',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ],
                                  rows: const [
                                    DataRow(cells: [
                                      DataCell(Text('Normal(38-Pages)')),
                                      DataCell(Text('Rs3000/-')),
                                      DataCell(Text('')),
                                      DataCell(Text('Rs12000/-')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(
                                        Text('Urgent(38-Pages)'),
                                      ),
                                      DataCell(
                                        Text('Rs5000/-'),
                                      ),
                                      DataCell(
                                        Text(''),
                                      ),
                                      DataCell(
                                        Text('Rs12000/-'),
                                      ),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Normal(72-Pages)')),
                                      DataCell(Text('Rs10000/-')),
                                      DataCell(Text('Rs 2500')),
                                      DataCell(Text('Rs12000/-')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Urgent(72-Pages)')),
                                      DataCell(Text('Rs12000/-')),
                                      DataCell(Text('(+ Appliceable Taxes)')),
                                      DataCell(Text('Rs12000/-')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Normal(100-Pages)')),
                                      DataCell(Text('Rs11000/-')),
                                      DataCell(Text('')),
                                      DataCell(Text('Rs12000/-')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Urgent(100-Pages)')),
                                      DataCell(Text('Rs12000/-')),
                                      DataCell(Text('')),
                                      DataCell(Text('Rs12000/-')),
                                    ]),
                                  ],
                                ),
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
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
