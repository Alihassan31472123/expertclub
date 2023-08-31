import 'package:career_edu/Availbilty_loans.dart';
import 'package:career_edu/govtschemtabs.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Govtloans extends StatefulWidget {
  const Govtloans({super.key});

  @override
  State<Govtloans> createState() => _GovtloansState();
}

class _GovtloansState extends State<Govtloans> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(preferredSize: Size.fromHeight(70.0),child: AppBar(
        
        backgroundColor: Colors.blue.shade900,
        centerTitle: false,
        leading: InkWell(
          onTap: () {
             Navigator.push(context, (MaterialPageRoute(builder: (context)=>MyTabs2())));
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
        body: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Column(
            children: [
           
                Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
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
                                      AssetImage("lib/images/sc2.png",),
                                     
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
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
          'Browse Government Loans',
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
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("The Government",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("of Pakistan offers a variety",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
                      ),
                  ],
                ),
              ),
              
               Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("of scheme programs to its citizens.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
                     
                  ],
                ),
              ),
               Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 360,
           
              child: TextField(
                
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                
              hintText: 'Search Location',hintStyle: TextStyle(color: Colors.grey),
              
            ),
      
            ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 360,
           
              child: TextField(
                
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                
              hintText: 'Select Loan Category',hintStyle: TextStyle(color: Colors.grey),
              
            ),
      
            ),
            ),
          ],
        ),
      ),
       Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 360,
           
              child: TextField(
                
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
    
                  
                
              hintText: 'Select Sub Category',hintStyle: TextStyle(color: Colors.grey),
              
            ),
      
            ),
            ),
          ],
        ),
      ),
       Padding(
                    padding: const EdgeInsets.only(left: 0,top: 40),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                  
                        InkWell(
                          onTap: (){
                            Navigator.push(context, (MaterialPageRoute(builder: (context)=>Avloans())));
                          },
                          child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius: BorderRadius.circular(35)
                            ),
                            child: Center(child: Text('Check Availbilty',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),),
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