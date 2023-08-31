import 'package:career_edu/Availbilty_loans.dart';
import 'package:career_edu/displaybisp.dart';
import 'package:career_edu/govtschemtabs.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bisp extends StatefulWidget {
  const Bisp({super.key});

  @override
  State<Bisp> createState() => _BispState();
}

class _BispState extends State<Bisp> {
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
                                      AssetImage("lib/images/sc3.png",),
                                    
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
          'BISP',
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
                    
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("Benazir income support program is for poor people",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
                      ),
                  ],
                ),
              ),
              
               Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("of Pakistan to support in cash.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
                     
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
           
              child: const TextField(
                
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                
              hintText: 'Enter City Name',hintStyle: TextStyle(color: Colors.grey),
              
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
           
              child: const TextField(
                
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                
              hintText: 'Enter Area name',hintStyle: TextStyle(color: Colors.grey),
              
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
                            Navigator.push(context, (MaterialPageRoute(builder: (context)=>const displaybisp())));
                          },
                          child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius: BorderRadius.circular(35)
                            ),
                            child: const Center(child: Text('Explore',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),),
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