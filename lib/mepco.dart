import 'package:career_edu/Availbilty_loans.dart';
import 'package:career_edu/displaybisp.dart';
import 'package:career_edu/electercity.dart';
import 'package:career_edu/govtschemtabs.dart';
import 'package:career_edu/newcondisplay.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mepco extends StatefulWidget {
  const mepco({super.key});

  @override
  State<mepco> createState() => _mepcoState();
}

List dropDownListData = [
  {"title": "New Connection", "value": "1"},
  {"title": "Web Development", "value": "2"},
  {"title": "Application Development", "value": "3"},
  {"title": "Graphic Designer", "value": "4"},
];

String defaultValue = "";

List dropDownListData2 = [
  {"title": "New Connection", "value": "1"},
  {"title": "Area SDO", "value": "2"},
  {"title": "Billing", "value": "3"},
  {"title": "Complaints", "value": "4"},
];

String defaultValue2 = "";

class _mepcoState extends State<mepco> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'MEPCO',
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
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        "Benazir income support program is for poor people",
                        style: TextStyle(
                            fontSize: 14,
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
                      "of Pakistan to support in cash.",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
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
                          value: defaultValue,
                          isDense: true,
                          isExpanded: true,
                          menuMaxHeight: 350,
                          items: [
                            const DropdownMenuItem(
                                child: Text(
                                  "Select One Category",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                value: ""),
                            ...dropDownListData2
                                .map<DropdownMenuItem<String>>((data) {
                              return DropdownMenuItem(
                                  child: Text(data['title']),
                                  value: data['value']);
                            }).toList(),
                          ],
                          onChanged: (value) {
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 360,
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          hintText: 'Enter area name',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            (MaterialPageRoute(
                                builder: (context) => newcon())));
                      },
                      child: Container(
                        height: 50,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.circular(35)),
                        child: Center(
                          child: Text(
                            'Explore',
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
            ],
          ),
        ),
      ),
    );
  }
}
