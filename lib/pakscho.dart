import 'package:career_edu/Scholarship.dart';
import 'package:career_edu/scholarshipsdesc.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'filter2.dart';

class pakscho extends StatefulWidget {
  const pakscho({super.key});

  @override
  State<pakscho> createState() => _pakschoState();
}

class _pakschoState extends State<pakscho> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(preferredSize: Size.fromHeight(70.0),child: AppBar(
        
        backgroundColor: Colors.blue.shade900,
        centerTitle: false,
        leading: InkWell(
          onTap: () {
             Navigator.push(context, (MaterialPageRoute(builder: (context)=>scholar())));
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
              padding: const EdgeInsets.only(top: 20),
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
                          "lib/images/35.png",
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
                                    value: 'Select city',
                                    isExpanded: true,
                                    items: const [
                                      DropdownMenuItem(
                                        value: 'Select city',
                                        child: Text('Select city'),
                                      ),
                                      DropdownMenuItem(
                                        value: '1',
                                        child: Text('Faisalabad'),
                                      ),
                                      DropdownMenuItem(
                                        value: '2',
                                        child: Text('Lahore'),
                                      ),
                                      DropdownMenuItem(
                                        value: '3',
                                        child: Text('Islamabad'),
                                      ),
                                      DropdownMenuItem(
                                        value: '4',
                                        child: Text('Gujranwala'),
                                      ),
                                      DropdownMenuItem(
                                        value: '5',
                                        child: Text('Bahawalpur'),
                                      ),
                                      DropdownMenuItem(
                                        value: '6',
                                        child: Text('Jhang'),
                                      ),
                                      DropdownMenuItem(
                                        value: '7',
                                        child: Text('Karachi'),
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
                                  builder: (context) => Filter2())));
                        },
                        child: Icon(
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
                    Navigator.push(context, (MaterialPageRoute(builder: (context)=>scdesc())));
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
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 0),
                      child: Text(
                        'HEC Scholarship',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 25),
                      child: Text(
                        'Affinity Pvt Ltd',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 45),
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
            Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 130,
                  color: Colors.white,
                  child: Center(
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
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 0),
                      child: Text(
                        'Interloop Scholarships',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 25),
                      child: Text(
                        'Affinity Pvt Ltd',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 45),
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
            Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 130,
                  color: Colors.white,
                  child: Center(
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
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 0),
                      child: Text(
                        'Customer Support Repersentative',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 25),
                      child: Text(
                        'Affinity Pvt Ltd',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 45),
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
            Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 130,
                  color: Colors.white,
                  child: Center(
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
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 0),
                      child: Text(
                        'Customer Support Repersentative',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 25),
                      child: Text(
                        'Affinity Pvt Ltd',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 45),
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
            Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
