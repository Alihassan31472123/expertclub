import 'package:career_edu/JOBS.dart';
import 'package:career_edu/expertclubacces.dart';
import 'package:career_edu/findjobfilter.dart';
import 'package:career_edu/healthdisplay.dart';
import 'package:career_edu/pasport.dart';
import 'package:career_edu/pepco.dart';
import 'package:career_edu/privatejobsdisplay.dart';

import 'package:career_edu/public_services.dart';
import 'package:career_edu/qesco.dart';

import 'package:career_edu/sngpl.dart';
import 'package:career_edu/splashscreenexp.dart';
import 'package:career_edu/ssgc.dart';
import 'package:career_edu/studydisplay.dart';
import 'package:career_edu/suigas.dart';
import 'package:career_edu/wasa.dart';
import 'package:flutter/material.dart';
import 'package:career_edu/Bottom.dart';
import 'package:career_edu/Travel.dart';
import 'package:flutter/material.dart';
import 'package:career_edu/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'Availbilty_loans.dart';
import 'about.dart';
import 'axplorecoaching.dart';
import 'bispsearch.dart';
import 'companyformationdisplay.dart';
import 'contactus.dart';
import 'displaybisp.dart';

import 'ehsaas.dart';
import 'ehsaasdisplay.dart';
import 'electercity.dart';
import 'example1.dart';

import 'fescoseaerch.dart';
import 'gepco.dart';
import 'globally.dart';
import 'govtjobs.dart';
import 'govtschemtabs.dart';
import 'gservices.dart';
import 'healthsearch.dart';
import 'hesco.dart';
import 'iesco.dart';
import 'jobsperview.dart';
import 'khidmatdisplay.dart';
import 'lesco.dart';
import 'mepco.dart';
import 'newconwasa.dart';
import 'newscreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      // Set the splash screen as the initial route
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/SwipeIntroApp': (context) => Login(), // Replace 'HomeScreen' with your actual home screen widget
      },
    );
  }
}


