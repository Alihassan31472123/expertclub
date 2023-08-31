import 'package:career_edu/Scholarship.dart';
import 'package:career_edu/scholarshipsdesc.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'filter2.dart';

class globscho extends StatefulWidget {
  const globscho({super.key});

  @override
  State<globscho> createState() => _globschoState();
}

class _globschoState extends State<globscho> {
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
                                  builder: (context) => scholar())));
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
                  padding: const EdgeInsets.only(top: 5, left: 50),
                  child: Container(
                    height: 90,
                    width: 170,
                    child: Image.asset(
                      'lib/images/expclub.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.pink.shade100,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: 200,
                    width: 370,
                    child: Carousel(
                      images: const [
                        AssetImage(
                          "lib/images/36.png",
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
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: double.infinity, // Adjust the width as needed
                          constraints: const BoxConstraints(maxWidth: 350),
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
                                        child: Text('QATAR'),
                                      ),
                                      DropdownMenuItem(
                                        value: '3',
                                        child: Text('NORWAY'),
                                      ),
                                      DropdownMenuItem(
                                        value: '4',
                                        child: Text('UNITED KINGDOME'),
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
                                        child: Text('FRANCE'),
                                      ),
                                    ],
                                    onChanged: (String? value) {},
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 8.0),
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: 'Select Degree',
                                    isExpanded: true,
                                    items: const [
                                      DropdownMenuItem(
                                        value: 'Select Degree',
                                        child: Text('Select Degree'),
                                      ),
                                      DropdownMenuItem(
                                        value: '1',
                                        child: Text(
                                            'Government College University Faisalabad: GCUF'),
                                      ),
                                      DropdownMenuItem(
                                        value: '2',
                                        child: Text('University of the Punjab'),
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
                                        child: Text('University of Karachi'),
                                      ),
                                    ],
                                    onChanged: (String? value) {},
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      value: 'Select Scholarship Nature',
                                      isExpanded: true,
                                      items: const [
                                        DropdownMenuItem(
                                          value: 'Select Scholarship Nature',
                                          child: Text('Select Scholarship Nature'),
                                        ),
                                        DropdownMenuItem(
                                          value: '1',
                                          child: Text('HEC'),
                                        ),
                                        DropdownMenuItem(
                                          value: '2',
                                          child: Text('SSC'),
                                        ),
                                        DropdownMenuItem(
                                          value: '3',
                                          child: Text('SSP'),
                                        ),
                                        DropdownMenuItem(
                                          value: '4',
                                          child: Text('UNITED KINGDOME'),
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
                                          child: Text('FRANCE'),
                                        ),
                                      ],
                                      onChanged: (String? value) {},
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
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
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
                                  builder: (context) => const Filter2())));
                        },
                        child: const Icon(
                          Icons.tune,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, (MaterialPageRoute(builder: (context)=>const scdesc())));
                  },
                  child: Container(
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
                        'Globally Scholarship',
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
                        'Interloop Scholarships',
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
                        'Customer Support Repersentative',
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
                        'Customer Support Repersentative',
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
    );
  }
}
