import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:career_edu/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Travel extends StatefulWidget {
  const Travel({ Key? key }) : super(key: key);

  @override
  _TravelState createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  @override
  Widget build(BuildContext context) {
    return SafeArea
    (
      child: Scaffold(
        body: ListView(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Column(
                        children: [
                          Container(
                                height: 100,
                                width: 190,
                                child: Image.asset('lib/images/expclub.png',fit: BoxFit.fitWidth,),
                              ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Row(
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
                                      AssetImage("lib/images/office1.jpg",),
                                      AssetImage("lib/images/office2.jpg"),
                                      AssetImage("lib/images/office3.jpg"),
                                      AssetImage("lib/images/office4.jpg"),
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
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0,top: 20),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text(
      'Expert Club',
      style: GoogleFonts.lato(
      color: Colors.black,
        fontSize: 35,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.italic,
      ),
    ),
                      ],
                    ),
                    
                  ),
                  
                   Padding(
                    padding: const EdgeInsets.only(left: 0,top: 30),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text('Access all',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text('your Solution',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                        )
                      ],
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(left: 20,),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('with Single click.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Build Your Future Now',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w900),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 40),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                  
                        InkWell(
                          onTap: (){
                            Navigator.push(context, (MaterialPageRoute(builder: (context)=>Login())));
                          },
                          child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius: BorderRadius.circular(35)
                            ),
                            child: Center(child: Text('Get Started',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),),
                          ),
                        )
                      ],
                    ),
                  ),
    
    
                ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}