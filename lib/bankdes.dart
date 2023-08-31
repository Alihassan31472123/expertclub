import 'package:career_edu/finance.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class fbanks extends StatefulWidget {
  const fbanks({super.key});

  @override
  State<fbanks> createState() => _fbanksState();
}

class _fbanksState extends State<fbanks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bank Description'),
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
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => launch('https://www.hbl.com/'),
                  child: Image.asset(
                    'lib/images/hbl.png',
                    width: 80,
                    height: 68,
                  ),
                ),
                GestureDetector(
                  onTap: () => launch('https://www.abl.com/'),
                  child: Image.asset(
                    'lib/images/allied_bank.jpg',
                    width: 80,
                    height: 68,
                  ),
                ),
                GestureDetector(
                  onTap: () => launch('https://www.bankalfalah.com/'),
                  child: Image.asset(
                    'lib/images/bank_alfalah.png',
                    width: 80,
                    height: 76,
                  ),
                ),
                GestureDetector(
                  onTap: () => launch('https://www.ubldigital.com/'),
                  child: Image.asset(
                    'lib/images/ubl.png',
                    width: 80,
                    height: 68,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => launch('https://www.faysalbank.com/en/islamic/'),
                  child: Image.asset(
                    'lib/images/faysal_bank.png',
                    width: 80,
                    height: 68,
                  ),
                ),
                GestureDetector(
                  onTap: () => launch('https://www.mcb.com.pk/'),
                  child: Image.asset(
                    'lib/images/mcb.png',
                    width: 80,
                    height: 68,
                  ),
                ),
                GestureDetector(
                  onTap: () => launch('https://askaribank.com/'),
                  child: Image.asset(
                    'lib/images/askari_bank.jpg',
                    width: 80,
                    height: 76,
                  ),
                ),
                GestureDetector(
                  onTap: () => launch('https://www.bankalhabib.com/'),
                  child: Image.asset(
                    'lib/images/bank_alhabib.png',
                    width: 80,
                    height: 68,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => launch('https://www.meezanbank.com/'),
                  child: Image.asset(
                    'lib/images/meezan.png',
                    width: 80,
                    height: 68,
                  ),
                ),
                GestureDetector(
                  onTap: () => launch('https://www.sc.com/pk/'),
                  child: Image.asset(
                    'lib/images/standar_logo.png',
                    width: 80,
                    height: 76,
                  ),
                ),
                GestureDetector(
                  onTap: () => launch('https://www.bop.com.pk/BoP'),
                  child: Image.asset(
                    'lib/images/punjab_bank.png',
                    width: 80,
                    height: 68,
                  ),
                ),
                GestureDetector(
                  onTap: () => launch('https://www.nbp.com.pk/'),
                  child: Image.asset(
                    'lib/images/nbp.jpg',
                    width: 80,
                    height: 68,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => launch('https://www.soneribank.com/'),
                  child: Image.asset(
                    'lib/images/sonari_bank.png',
                    width: 80,
                    height: 68,
                  ),
                ),
                GestureDetector(
                  onTap: () => launch('https://jsbl.com/'),
                  child: Image.asset(
                    'lib/images/js_bank.png',
                    width: 80,
                    height: 76,
                  ),
                ),
                GestureDetector(
                  onTap: () => launch('https://www.hbl.com/'),
                  child: Image.asset(
                    'lib/images/hbl.png',
                    width: 80,
                    height: 68,
                  ),
                ),
                GestureDetector(
                  onTap: () => launch('https://summitbank.com.pk/'),
                  child: Image.asset(
                    'lib/images/summit_bank.jpg',
                    width: 80,
                    height: 68,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => launch('https://www.habibmetro.com/'),
                  child: Image.asset(
                    'lib/images/habib_metro.jpg',
                    width: 80,
                    height: 68,
                  ),
                ),
                GestureDetector(
                  onTap: () => launch('https://bankislami.com.pk/'),
                  child: Image.asset(
                    'lib/images/bank_islamic.png',
                    width: 80,
                    height: 76,
                  ),
                ),
                GestureDetector(
                  onTap: () => launch('https://www.albaraka.com.pk/'),
                  child: Image.asset(
                    'lib/images/al_barka.png',
                    width: 80,
                    height: 68,
                  ),
                ),
                GestureDetector(
                  onTap: () => launch('https://www.sbp.org.pk/index.html'),
                  child: Image.asset(
                    'lib/images/state_bank.png',
                    width: 80,
                    height: 68,
                  ),
                ),
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => launch('https://www.silkbank.com.pk/'),
                  child: Image.asset(
                    'lib/images/slik_bank.png',
                    width: 80,
                    height: 68,
                  ),
                ),
                GestureDetector(
                  onTap: () => launch('https://www.dibpak.com/'),
                  child: Image.asset(
                    'lib/images/dubai_islamic1.png',
                    width: 80,
                    height: 63,
                  ),
                ),
                GestureDetector(
                  onTap: () => launch('https://www.sindhbank.com.pk/'),
                  child: Image.asset(
                    'lib/images/sindh_bank.jpg',
                    width: 80,
                    height: 76,
                  ),
                ),
                GestureDetector(
                  onTap: () => launch('https://www.dibpak.com'),
                  child: Image.asset(
                    'lib/images/dubai_islamic.png',
                    width: 80,
                    height: 68,
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
