import 'package:career_edu/fescoseaerch.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'electercity.dart';

class newcon extends StatefulWidget {
  const newcon({super.key});

  @override
  State<newcon> createState() => _newconState();
}

class _newconState extends State<newcon> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
       
        body: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              (MaterialPageRoute(
                                  builder: (context) => electercity())));
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 40),
                  child: Container(
                    height: 120,
                    width: 190,
                    child: Image.asset(
                      'lib/images/expclub.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 80),
                  child: Row(
                    children: [
                      Text(
                        'New Connection Detail',
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
                    children: [
                      Text(
                        'How to Apply',
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
                    children: [
                      Text(
                        'Details',
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
                            'Apply Now',
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
