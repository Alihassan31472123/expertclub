import 'package:career_edu/secpdisplay.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class companyformation extends StatefulWidget {
  const companyformation({super.key});

  @override
  State<companyformation> createState() => _companyformationState();
}

class _companyformationState extends State<companyformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Company Formation'),
        backgroundColor: Colors.blue.shade900,
        leading: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => secp()));
          },
          child: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}