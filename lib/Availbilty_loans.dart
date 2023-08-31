import 'package:career_edu/govtloans.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Avloans extends StatefulWidget {
  const Avloans({super.key});

  @override
  State<Avloans> createState() => _AvloansState();
}

class _AvloansState extends State<Avloans> {
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
                                    builder: (context) => const Govtloans())));
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
                    'Available Loans',
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
                            'Kamyab Jawan Programe',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 25),
                          child: Text(
                            'Affinity Pvt Ltd',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 45),
                          child: Text(
                            'Lahore',
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
                            'Mar 25, 2023',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue.shade700),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  enableDrag: true,
                                  isScrollControlled: true,
                                  isDismissible: true,
                                  builder: (BuildContext context) {
                                    return Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30))),
                                      child: ListView(
                                        children: [
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 70, left: 90),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'Loan Description',
                                                      style: GoogleFonts.lato(
                                                        color: Colors.black,
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 70),
                                                      child: InkWell(
                                                          onTap: () =>
                                                              Navigator.pop(
                                                                  context),
                                                          child: Container(
                                                              height: 40,
                                                              width: 40,
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      boxShadow: [
                                                                    new BoxShadow(
                                                                      color: Colors
                                                                          .grey
                                                                          .shade300,
                                                                      offset:
                                                                          new Offset(
                                                                        5.5,
                                                                        5.5,
                                                                      ),
                                                                    )
                                                                  ]),
                                                              child: const Icon(
                                                                Icons.close,
                                                                size: 40,
                                                              ))),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 30, left: 10),
                                                child: Row(
                                                  children: [
                                                    const Text(
                                                      'Eligbilty Criteria',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 20),
                                                      child: Text(
                                                        "One example of a loan is a car loan. This is a closed-end loan,",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors
                                                                .grey.shade600),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 0, left: 20),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "of scheme programs to its citizens.",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10, left: 10),
                                                child: Row(
                                                  children: [
                                                    const Text(
                                                      'How to Apply',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 20),
                                                      child: Text(
                                                        "One example of a loan is a car loan. This is a closed-end loan,",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors
                                                                .grey.shade600),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 0, left: 20),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "of scheme programs to its citizens.",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10, left: 10),
                                                child: Row(
                                                  children: [
                                                    const Text(
                                                      'Benfits',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 20),
                                                      child: Text(
                                                        "One example of a loan is a car loan. This is a closed-end loan,",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors
                                                                .grey.shade600),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 0, left: 20),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "of scheme programs to its citizens.",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10, left: 10),
                                                child: Row(
                                                  children: [
                                                    const Text(
                                                      'Banks',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 17),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Container(
                                                      height: 60,
                                                      width: 60,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          boxShadow: [
                                                            new BoxShadow(
                                                              color: Colors.grey
                                                                  .shade300,
                                                              offset:
                                                                  new Offset(
                                                                5.5,
                                                                5.5,
                                                              ),
                                                            )
                                                          ]),
                                                      child: Image.asset(
                                                          'lib/images/hbl.jpg'),
                                                    ),
                                                    Container(
                                                      height: 60,
                                                      width: 60,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          boxShadow: [
                                                            new BoxShadow(
                                                              color: Colors.grey
                                                                  .shade300,
                                                              offset:
                                                                  new Offset(
                                                                5.5,
                                                                5.5,
                                                              ),
                                                            )
                                                          ]),
                                                      child: Image.asset(
                                                          'lib/images/meezan.jpg'),
                                                    ),
                                                    Container(
                                                      height: 60,
                                                      width: 60,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          boxShadow: [
                                                            new BoxShadow(
                                                              color: Colors.grey
                                                                  .shade300,
                                                              offset:
                                                                  new Offset(
                                                                5.5,
                                                                5.5,
                                                              ),
                                                            )
                                                          ]),
                                                      child: Image.asset(
                                                          'lib/images/nbp.png'),
                                                    ),
                                                    Container(
                                                      height: 60,
                                                      width: 60,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          boxShadow: [
                                                            new BoxShadow(
                                                              color: Colors.grey
                                                                  .shade300,
                                                              offset:
                                                                  new Offset(
                                                                5.5,
                                                                5.5,
                                                              ),
                                                            )
                                                          ]),
                                                      child: Image.asset(
                                                          'lib/images/punjab_bank.png'),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 30),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      height: 200,
                                                      width: 300,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          boxShadow: [
                                                            new BoxShadow(
                                                              color: Colors.grey
                                                                  .shade300,
                                                              offset:
                                                                  new Offset(
                                                                10.10,
                                                                10.10,
                                                              ),
                                                            )
                                                          ]),
                                                      child: const Center(
                                                        child: Text(
                                                          'Video Section',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 17),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 30),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      height: 50,
                                                      width: 340,
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .blue.shade900,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30)),
                                                      child: const Center(
                                                        child: Text(
                                                          'Hire Assistant',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 17),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      height: 50,
                                                      width: 340,
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .blue.shade900,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30)),
                                                      child: const Center(
                                                        child: Text(
                                                          'Apply Now',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
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
                                    );
                                  });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 70, left: 10),
                              child: Row(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade900,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Center(
                                      child: Text(
                                        'Details',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
              Row(
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
                          'Kamyab Jawan Programe',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 25),
                        child: Text(
                          'Affinity Pvt Ltd',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 45),
                        child: Text(
                          'Faisalabad',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 75, top: 48),
                        child: Container(
                          height: 13,
                          width: 2,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 95, top: 45),
                        child: Text(
                          'Mar 25, 2023',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlue.shade700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30))),
                                    child: ListView(
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "Upgrade Yourself Now",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, top: 10, right: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: 150,
                                                    child: TextField(
                                                        decoration:
                                                            const InputDecoration(
                                                          labelText:
                                                              'Expiry Date',
                                                        ),
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        inputFormatters: <
                                                            TextInputFormatter>[
                                                          FilteringTextInputFormatter
                                                              .digitsOnly,
                                                        ]),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 150,
                                                    child: TextField(
                                                        decoration:
                                                            const InputDecoration(
                                                          labelText:
                                                              'Security Code',
                                                        ),
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        inputFormatters: <
                                                            TextInputFormatter>[
                                                          FilteringTextInputFormatter
                                                              .digitsOnly,
                                                        ]),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 10),
                                              child: Container(
                                                height: 50,
                                                width: 340,
                                                child: TextField(
                                                    decoration: InputDecoration(
                                                      labelText: 'Card Number',
                                                      suffixIcon: Icon(
                                                        Icons.credit_card,
                                                        color: Colors
                                                            .blue.shade900,
                                                      ),
                                                    ),
                                                    keyboardType:
                                                        TextInputType.number,
                                                    inputFormatters: <
                                                        TextInputFormatter>[
                                                      FilteringTextInputFormatter
                                                          .digitsOnly,
                                                    ]),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 10),
                                              child: Container(
                                                height: 50,
                                                width: 340,
                                                child: TextField(
                                                    decoration: InputDecoration(
                                                      labelText: "Name on Card",
                                                      suffixIcon: Icon(
                                                        Icons.person,
                                                        color: Colors
                                                            .blue.shade900,
                                                      ),
                                                    ),
                                                    keyboardType:
                                                        TextInputType.number,
                                                    inputFormatters: <
                                                        TextInputFormatter>[
                                                      FilteringTextInputFormatter
                                                          .digitsOnly,
                                                    ]),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, top: 10),
                                              child: Row(
                                                children: [
                                                  Container(
                                                      height: 25,
                                                      width: 25,
                                                      color: Colors.white,
                                                      child: Icon(
                                                          Icons.check_box,
                                                          size: 25,
                                                          color: Colors
                                                              .blue.shade900)),
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.only(
                                                            left: 10),
                                                    child: Text(
                                                      'Remember me',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: 340,
                                                    decoration: BoxDecoration(
                                                        color: Colors
                                                            .blue.shade900,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30)),
                                                    child: const Center(
                                                      child: Text(
                                                        'Apply Now',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 17),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 70, left: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.blue.shade900,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Details',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                thickness: 2,
              ),
              Row(
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
                          'Kamyab Jawan Prograame',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 25),
                        child: Text(
                          'Affinity Pvt Ltd',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 45),
                        child: Text(
                          'Lahore',
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
                          'Mar 25, 2023',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlue.shade700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30))),
                                    child: ListView(
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "Upgrade Yourself Now",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, top: 10, right: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: 150,
                                                    child: TextField(
                                                        decoration:
                                                            const InputDecoration(
                                                          labelText:
                                                              'Expiry Date',
                                                        ),
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        inputFormatters: <
                                                            TextInputFormatter>[
                                                          FilteringTextInputFormatter
                                                              .digitsOnly,
                                                        ]),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 150,
                                                    child: TextField(
                                                        decoration:
                                                            const InputDecoration(
                                                          labelText:
                                                              'Security Code',
                                                        ),
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        inputFormatters: <
                                                            TextInputFormatter>[
                                                          FilteringTextInputFormatter
                                                              .digitsOnly,
                                                        ]),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 10),
                                              child: Container(
                                                height: 50,
                                                width: 340,
                                                child: TextField(
                                                    decoration: InputDecoration(
                                                      labelText: 'Card Number',
                                                      suffixIcon: Icon(
                                                        Icons.credit_card,
                                                        color: Colors
                                                            .blue.shade900,
                                                      ),
                                                    ),
                                                    keyboardType:
                                                        TextInputType.number,
                                                    inputFormatters: <
                                                        TextInputFormatter>[
                                                      FilteringTextInputFormatter
                                                          .digitsOnly,
                                                    ]),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 10),
                                              child: Container(
                                                height: 50,
                                                width: 340,
                                                child: TextField(
                                                    decoration: InputDecoration(
                                                      labelText: "Name on Card",
                                                      suffixIcon: Icon(
                                                        Icons.person,
                                                        color: Colors
                                                            .blue.shade900,
                                                      ),
                                                    ),
                                                    keyboardType:
                                                        TextInputType.number,
                                                    inputFormatters: <
                                                        TextInputFormatter>[
                                                      FilteringTextInputFormatter
                                                          .digitsOnly,
                                                    ]),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, top: 10),
                                              child: Row(
                                                children: [
                                                  Container(
                                                      height: 25,
                                                      width: 25,
                                                      color: Colors.white,
                                                      child: Icon(
                                                          Icons.check_box,
                                                          size: 25,
                                                          color: Colors
                                                              .blue.shade900)),
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.only(
                                                            left: 10),
                                                    child: Text(
                                                      'Remember me',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: 340,
                                                    decoration: BoxDecoration(
                                                        color: Colors
                                                            .blue.shade900,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30)),
                                                    child: const Center(
                                                      child: Text(
                                                        'Apply Now',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 17),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 70, left: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.blue.shade900,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Details',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                thickness: 2,
              ),
              Row(
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
                          'Kamyab Jawan Programe',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 25),
                        child: Text(
                          'Affinity Pvt Ltd',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 45),
                        child: Text(
                          'Lahore',
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
                          'Mar 25, 2023',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlue.shade700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30))),
                                    child: ListView(
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "Upgrade Yourself Now",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, top: 10, right: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: 150,
                                                    child: TextField(
                                                        decoration:
                                                            const InputDecoration(
                                                          labelText:
                                                              'Expiry Date',
                                                        ),
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        inputFormatters: <
                                                            TextInputFormatter>[
                                                          FilteringTextInputFormatter
                                                              .digitsOnly,
                                                        ]),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 150,
                                                    child: TextField(
                                                        decoration:
                                                            const InputDecoration(
                                                          labelText:
                                                              'Security Code',
                                                        ),
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        inputFormatters: <
                                                            TextInputFormatter>[
                                                          FilteringTextInputFormatter
                                                              .digitsOnly,
                                                        ]),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 10),
                                              child: Container(
                                                height: 50,
                                                width: 340,
                                                child: TextField(
                                                    decoration: InputDecoration(
                                                      labelText: 'Card Number',
                                                      suffixIcon: Icon(
                                                        Icons.credit_card,
                                                        color: Colors
                                                            .blue.shade900,
                                                      ),
                                                    ),
                                                    keyboardType:
                                                        TextInputType.number,
                                                    inputFormatters: <
                                                        TextInputFormatter>[
                                                      FilteringTextInputFormatter
                                                          .digitsOnly,
                                                    ]),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 10),
                                              child: Container(
                                                height: 50,
                                                width: 340,
                                                child: TextField(
                                                    decoration: InputDecoration(
                                                      labelText: "Name on Card",
                                                      suffixIcon: Icon(
                                                        Icons.person,
                                                        color: Colors
                                                            .blue.shade900,
                                                      ),
                                                    ),
                                                    keyboardType:
                                                        TextInputType.number,
                                                    inputFormatters: <
                                                        TextInputFormatter>[
                                                      FilteringTextInputFormatter
                                                          .digitsOnly,
                                                    ]),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, top: 10),
                                              child: Row(
                                                children: [
                                                  Container(
                                                      height: 25,
                                                      width: 25,
                                                      color: Colors.white,
                                                      child: Icon(
                                                          Icons.check_box,
                                                          size: 25,
                                                          color: Colors
                                                              .blue.shade900)),
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.only(
                                                            left: 10),
                                                    child: Text(
                                                      'Remember me',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: 340,
                                                    decoration: BoxDecoration(
                                                        color: Colors
                                                            .blue.shade900,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30)),
                                                    child: const Center(
                                                      child: Text(
                                                        'Apply Now',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 17),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 70, left: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.blue.shade900,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Details',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                thickness: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
