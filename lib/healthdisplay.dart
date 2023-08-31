import 'package:career_edu/bispsearch.dart';
import 'package:career_edu/govtloans.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'healthsearch.dart';

class healthsearch extends StatefulWidget {
  const healthsearch({super.key});

  @override
  State<healthsearch> createState() => _healthsearchState();
}

class _healthsearchState extends State<healthsearch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: ListView(
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
                                    builder: (context) => const health())));
                          },
                          child: const Icon(
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
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Health Card',
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
                    const Text(
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
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      width: 130,
                      color: Colors.white,
                      child: const Center(
                          child: Icon(
                        Icons.business,
                        size: 40,
                        color: Colors.grey,
                      )),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 80,
                          width: 260,
                          color: Colors.white,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 0),
                          child: Text(
                            'Area Incharge :    Ali Hassan',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 25),
                          child: Text(
                            'kohenoor City',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 45),
                          child: Text(
                            'Contact',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60, top: 48),
                          child: Container(
                            height: 13,
                            width: 2,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70, top: 45),
                          child: Text(
                            '03036294778',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue.shade700),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      width: 130,
                      color: Colors.white,
                      child: const Center(
                          child: Icon(
                        Icons.business,
                        size: 40,
                        color: Colors.grey,
                      )),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 80,
                          width: 260,
                          color: Colors.white,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 0),
                          child: Text(
                            'Area Incharge :    Ali Hassan',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 25),
                          child: Text(
                            'kohenoor City',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 45),
                          child: Text(
                            'Contact',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60, top: 48),
                          child: Container(
                            height: 13,
                            width: 2,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70, top: 45),
                          child: Text(
                            '03036294778',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue.shade700),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      width: 130,
                      color: Colors.white,
                      child: const Center(
                          child: Icon(
                        Icons.business,
                        size: 40,
                        color: Colors.grey,
                      )),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 80,
                          width: 260,
                          color: Colors.white,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 0),
                          child: Text(
                            'Area Incharge :    Ali Hassan',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 25),
                          child: Text(
                            'kohenoor City',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 45),
                          child: Text(
                            'Contact',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60, top: 48),
                          child: Container(
                            height: 13,
                            width: 2,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70, top: 45),
                          child: Text(
                            '03036294778',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue.shade700),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      width: 130,
                      color: Colors.white,
                      child: const Center(
                          child: Icon(
                        Icons.business,
                        size: 40,
                        color: Colors.grey,
                      )),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 80,
                          width: 260,
                          color: Colors.white,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 0),
                          child: Text(
                            'Area Incharge :    Ali Hassan',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 25),
                          child: Text(
                            'kohenoor City',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 45),
                          child: Text(
                            'Contact',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60, top: 48),
                          child: Container(
                            height: 13,
                            width: 2,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70, top: 45),
                          child: Text(
                            '03036294778',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue.shade700),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 10),
                child: Row(
                  children: [
                    const Text(
                      'Eligbilty Criteria',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
                    const Text(
                      'How to Apply',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
                    const Text(
                      'Benfits',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
                      child: const Center(
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
                      child: const Center(
                        child: Text(
                          'Apply',
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
      ),
    );
  }
}
