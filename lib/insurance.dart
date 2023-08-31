import 'package:career_edu/finance.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class insurance extends StatefulWidget {
  const insurance({super.key});

  @override
  State<insurance> createState() => _insuranceState();
}

class _insuranceState extends State<insurance> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Insurance Description'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Text(
                        'Description',
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                   
                  ],
                ),
              ),
             
              Container(
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8.0),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Process',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Government of Pakistan offers the Kamyab Jawan financing scheme for youth entrepreneurs. Eligible persons can apply for the said financing only through the',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              'Government of Pakistan, recognizing the financial needs of youth entrepreneurs and SME business has introduced the "Prime Minister’s Kamyab Jawan Programme. This financing scheme will provide youth with affordable financing for establishing new and strengthening existing SME businesses. As per directives of Government of Pakistan, 25% of the financing will go to female customers.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Banks in Pakistan',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => launch('https://www.statelife.com.pk/'),
                  child: Image.asset(
                    'lib/images/statelife.png',
                    width: 150,
                    height: 90,
                  ),
                ),
               
                              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => launch('https://www.hbl.com/'),
                  child: Image.asset(
                    'lib/images/efu_insurance.png',
                    width: 150,
                    height: 90,
                  ),
                ),
                GestureDetector(
                  onTap: () => launch('https://www.abl.com/'),
                  child: Image.asset(
                    'lib/images/igi.jpg',
                    width: 150,
                    height: 90,
                  ),
                ),
                              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () => launch('https://www.bankalfalah.com/'),
                      child: Image.asset(
                        'lib/images/jubilee_insurance.png',
                        width: 150,
                        height: 90,
                      ),
                    ),
                    GestureDetector(
                  onTap: () => launch('https://www.ubldigital.com/'),
                  child: Image.asset(
                    'lib/images/askari_insurance.jpg',
                    width: 150,
                    height: 90,
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
    );
  }
}
