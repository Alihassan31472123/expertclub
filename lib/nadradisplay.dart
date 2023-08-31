import 'package:career_edu/JOBS.dart';
import 'package:career_edu/findjobfilter.dart';
import 'package:career_edu/login.dart';
import 'package:career_edu/public_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'electercity.dart';
import 'fescoseaerch.dart';
import 'gservices.dart';

class nadradisplay extends StatefulWidget {
  @override
  _nadradisplayState createState() => _nadradisplayState();
}

class _nadradisplayState extends State<nadradisplay>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 10, vsync: this);
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
          title: Text('NADRA'),
          centerTitle: true,
          leading: InkWell(
              onTap: () {
                Navigator.push(context,
                    (MaterialPageRoute(builder: (context) => gservices())));
              },
              child: Icon(Icons.arrow_back)),
          backgroundColor: Colors.blue.shade900,
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: const [
              Tab(text: 'NADRA Offices'),
              Tab(text: 'NADRA Executive'),
              Tab(text: 'Cancellation Certificate'),
              Tab(text: 'Child Registeraion Certificate'),
              Tab(text: 'Family Registeration Certificate'),
              Tab(text: 'Fee Structure'),
              Tab(text: 'Juvenile Card'),
              Tab(text: 'National Identity Card'),
              Tab(text: 'National Identity Card For Overseas Pakistanis'),
              Tab(text: 'Pakistan Origin Card'),
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
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'NADRA Offices',
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
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
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
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'NADRA Executive',
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
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Cancellation Certificate',
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
                          'Policy',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          'Process',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          'Time Duration',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
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
                              'Check',
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
                ],
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Child Registeration Certificate',
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
                    padding: const EdgeInsets.only(top: 30, left: 10),
                    child: Row(
                      children: const [
                        Text(
                          'Policy',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          'Process',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          'Time Duration',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
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
                              'Check',
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
                ],
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Family Registeration Certificate',
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
                    padding: const EdgeInsets.only(top: 30, left: 10),
                    child: Row(
                      children: const [
                        Text(
                          'Policy',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          'Process',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          'Time Duration',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
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
                              'Check',
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
                ],
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Fee Structure',
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
                    padding: const EdgeInsets.only(top: 20, left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Fee Detail of CNIC/SNIC',
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
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columns: const [
                            DataColumn(
                                label: Text(
                              'Categories/Type',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                            DataColumn(
                                label: Text(
                              'Normal',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                            DataColumn(
                                label: Text(
                              'Urgent',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                            DataColumn(
                                label: Text(
                              'Executive',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          ],
                          rows: const [
                            DataRow(cells: [
                              DataCell(Text('New CNIC')),
                              DataCell(Text('PKR 0')),
                              DataCell(Text('PKR 1150')),
                              DataCell(Text('PKR 2150')),
                            ]),
                            DataRow(cells: [
                              DataCell(
                                Text('CNIC Modification'),
                              ),
                              DataCell(
                                Text('PKR 400'),
                              ),
                              DataCell(
                                Text('PKR 1150'),
                              ),
                              DataCell(
                                Text('PKR 2150'),
                              ),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('CNIC Duplicate')),
                              DataCell(Text('PKR 400')),
                              DataCell(Text('PKR 1150')),
                              DataCell(Text('PKR 2150')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('CNIC Renewal')),
                              DataCell(Text('PKR 400')),
                              DataCell(Text('PKR 1150')),
                              DataCell(Text('PKR 2150')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('New Smart NIC')),
                              DataCell(Text('PKR 750')),
                              DataCell(Text('PKR 1500')),
                              DataCell(Text('PKR 2500')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Smart NIC Modification')),
                              DataCell(Text('PKR 750')),
                              DataCell(Text('PKR 1500')),
                              DataCell(Text('PKR 2500')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Smart NIC Duplicate')),
                              DataCell(Text('PKR 750')),
                              DataCell(Text('PKR 1500')),
                              DataCell(Text('PKR 2500')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Smart NIC Renewal')),
                              DataCell(Text('PKR 750')),
                              DataCell(Text('PKR 1500')),
                              DataCell(Text('PKR 2500')),
                            ]),
                            DataRow(cells: [
                              DataCell(
                                  Text('CNIC Cancellation (Due to death)')),
                              DataCell(Text('PKR 50')),
                              DataCell(Text('-')),
                              DataCell(Text('-')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('CRC New/Duplicate/Modification')),
                              DataCell(Text('PKR 50')),
                              DataCell(Text('-')),
                              DataCell(Text('PKR 500')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('FRC')),
                              DataCell(Text('PKR 1000')),
                              DataCell(Text('-')),
                              DataCell(Text('PKR 1000')),
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Fee Details of NICOP/SNICOP',
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
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columns: [
                            DataColumn(label: Text('Categories/Type Zone A')),
                            DataColumn(label: Text('Normal')),
                            DataColumn(label: Text('Urgent')),
                            DataColumn(label: Text('Executive')),
                          ],
                          rows: [
                            DataRow(cells: [
                              DataCell(Text('New CNIC')),
                              DataCell(Text('PKR 0')),
                              DataCell(Text('PKR 1150')),
                              DataCell(Text('PKR 2150')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('CNIC Modification')),
                              DataCell(Text('PKR 400')),
                              DataCell(Text('PKR 1150')),
                              DataCell(Text('PKR 2150')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('CNIC Duplicate')),
                              DataCell(Text('PKR 400')),
                              DataCell(Text('PKR 1150')),
                              DataCell(Text('PKR 2150')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('CNIC Renewal')),
                              DataCell(Text('PKR 400')),
                              DataCell(Text('PKR 1150')),
                              DataCell(Text('PKR 2150')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('New Smart NIC')),
                              DataCell(Text('PKR 750')),
                              DataCell(Text('PKR 1500')),
                              DataCell(Text('PKR 2500')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Smart NIC Modification')),
                              DataCell(Text('PKR 750')),
                              DataCell(Text('PKR 1500')),
                              DataCell(Text('PKR 2500')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Smart NIC Duplicate')),
                              DataCell(Text('PKR 750')),
                              DataCell(Text('PKR 1500')),
                              DataCell(Text('PKR 2500')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Smart NIC Renewal')),
                              DataCell(Text('PKR 750')),
                              DataCell(Text('PKR 1500')),
                              DataCell(Text('PKR 2500')),
                            ]),
                            DataRow(cells: [
                              DataCell(
                                  Text('CNIC Cancellation (Due to death)')),
                              DataCell(Text('PKR 50')),
                              DataCell(Text('-')),
                              DataCell(Text('-')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('CRC New/Duplicate/Modification')),
                              DataCell(Text('PKR 50')),
                              DataCell(Text('-')),
                              DataCell(Text('PKR 500')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('FRC')),
                              DataCell(Text('PKR 1000')),
                              DataCell(Text('-')),
                              DataCell(Text('PKR 1000')),
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'For clearance of Multiple/duplicate',
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
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      child: Table(
                        border: TableBorder.all(),
                        columnWidths: {
                          0: FlexColumnWidth(2),
                          1: FlexColumnWidth(1),
                          2: FlexColumnWidth(1),
                        },
                        children: [
                          TableRow(
                            decoration: BoxDecoration(color: Colors.grey[200]),
                            children: [
                              Center(
                                  child: Text('Criteria/Description Zone B',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))),
                              Center(
                                  child: Text('Fee',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))),
                              Center(
                                  child: Text('Region',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text(
                                  'Similar Particular or particular with slight difference',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Center(child: Text('\$10 (USD)')),
                              Text('Zone (A,B)'),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text('With different particular',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Center(child: Text('\$250 (USD)')),
                              Text('Zone A countries'),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text('With different particular',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Center(child: Text('\$120 (USD)')),
                              Text('Zone B countries'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Juvnile Card',
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
                    padding: const EdgeInsets.only(top: 30, left: 10),
                    child: Row(
                      children: const [
                        Text(
                          'Policy',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          'Process',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          'Time Duration',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
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
                              'Check',
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
                ],
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'National Identity Card',
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
                    padding: const EdgeInsets.only(top: 30, left: 10),
                    child: Row(
                      children: const [
                        Text(
                          'Policy',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          'Process',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          'Time Duration',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
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
                              'Check',
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
                ],
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'National Identity Card For Overseas Pakistanis',
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 17,
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
                          'Policy',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          'Process',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          'Time Duration',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
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
                              'Check',
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
                ],
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Pakistan Origin Card',
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
                    padding: const EdgeInsets.only(top: 30, left: 10),
                    child: Row(
                      children: const [
                        Text(
                          'Policy',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          'Process',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          'Time Duration',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
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
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
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
                              'Check',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
