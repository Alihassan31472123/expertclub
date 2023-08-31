import 'package:career_edu/JOBS.dart';
import 'package:career_edu/expertclubacces.dart';
import 'package:career_edu/login.dart';
import 'package:career_edu/privatejobsdisplay.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
  
}

class _FilterState extends State<Filter> {
   int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
int _value =0;
int _select =0;
int _salary =0;
int _exp =0;
int _edu =0;
  @override
  
  Widget build(BuildContext context) {
    
    
    return SafeArea(
      child: Scaffold(
       
    
        body: ListView(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 385,
                  decoration: BoxDecoration(
                    color: Colors.white,
                     boxShadow: [
                        new BoxShadow(
                          color: Colors.grey.shade300,
                          offset: new Offset(0.2, 2.2,),
                        ),
                      ]
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                     Container(
                       height: 50,
                       width: 50,
                       decoration: BoxDecoration(
                         color: Colors.blue.shade900,
                         borderRadius: BorderRadius.circular(8),
                         
                       ),
                       child: Center(child: InkWell(
                         onTap: (){
                             Navigator.push(context, (MaterialPageRoute(builder: (context)=>pvtjobs())));
                           },
                         child: Icon(Icons.arrow_back,color: Colors.white,),
                         ),
                         ),
                     ),
                      Container(
                                  height: 60,
                                  width: 120,
                                  child: Image.asset('lib/images/expclub.png',fit: BoxFit.fitWidth,),
                                ),
                    
                      
                       Container(
                         height: 50,
                         width: 50,
                         decoration: BoxDecoration(
                           color: Colors.blue.shade900,
                           borderRadius: BorderRadius.circular(8),
                           
                         ),
                         child: Center(child: InkWell(
                           onTap: (){
                               Navigator.push(context, (MaterialPageRoute(builder: (context)=>Access())));
                             },
                           child: Icon(Icons.home,color: Colors.white,),
                           ),
                           ),
                       ),
                  
                                ],
                              ),
                  ),
     
                ),
              ],
            ),
                       Padding(
                         padding: const EdgeInsets.only(top: 20,left: 10),
                         child: Row(
                                     children: [
                                       Text('Sort By',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                                     ],
                                   ),
                       ),
                       Column(mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Row(
                             children: [
                               Radio(
                                 
                               value: 1,
                               groupValue: _value,
                               onChanged: (value) {
                                 setState(() {
                                  _value = value!;
                                });
                               },
                                activeColor: Colors.blue.shade900,
    
                               ),
                               SizedBox( width: 10,),
                               Text('Latest',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
    
                             ],
                           ),
                           Row(
                             children: [
                               Radio(
                                 
                               value: 2,
                               groupValue: _value,
                               onChanged: (value) {
                                 setState(() {
                                  _value = value!;
                                });
                               },
                                activeColor: Colors.blue.shade900,
                               
    
                               ),
                               SizedBox( width: 10,),
                               Text('Date',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
    
                             ],
                           ),
                           Divider(
          height: 20,
          thickness: 2,
          indent: 20,
          endIndent: 20,
        ),
                          
                         ],
                       ),
              Padding(
                         padding: const EdgeInsets.only(top: 10,left: 10),
                         child: Row(
                                     children: [
                                       Text('Job Type',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                                     ],
                                   ),
                       ),
                       Column(mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Row(
                             children: [
                               Radio(
                                 
                               value: 1,
                               groupValue:  _select,
                               onChanged: (value) {
                                 setState(() {
                                  _select = value!;
                                });
                               },
                                activeColor: Colors.blue.shade900,
    
                               ),
                               SizedBox( width: 10,),
                               Text('Full time',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
    
                             ],
                           ),
                           Row(
                             children: [
                               Radio(
                                 
                               value: 2,
                               groupValue:  _select,
                               onChanged: (value) {
                                 setState(() {
                                   _select = value!;
                                });
                               },
                                activeColor: Colors.blue.shade900,
                               
    
                               ),
                               SizedBox( width: 10,),
                               Text('Part time',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
    
                             ],
                           ),
                           Row(
                             children: [
                               Radio(
                                 
                               value: 3,
                               groupValue:  _select,
                               onChanged: (value) {
                                 setState(() {
                                   _select = value!;
                                });
                               },
                                activeColor: Colors.blue.shade900,
                               
    
                               ),
                               SizedBox( width: 10,),
                               Text('Remotely',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
    
                             ],
                           ),
                           Divider(
          height: 20,
          thickness: 2,
          indent: 10,
          endIndent: 10,
        ),
                          
                         ],
                       ),
      
      
      Padding(
                         padding: const EdgeInsets.only(top: 10,left: 10),
                         child: Row(
                                     children: [
                                       Text('Experience',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                                     ],
                                   ),
                       ),
                       Column(mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Row(
                             children: [
                               Radio(
                                 
                               value: 1,
                               groupValue: _exp,
                               onChanged: (value) {
                                 setState(() {
                                  _exp = value!;
                                });
                               },
                                activeColor: Colors.blue.shade900,
    
                               ),
                               SizedBox( width: 10,),
                               Text('Fresher',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
    
                             ],
                           ),
                           Row(
                             children: [
                               Radio(
                                 
                               value: 2,
                               groupValue: _exp,
                               onChanged: (value) {
                                 setState(() {
                                  _exp = value!;
                                });
                               },
                                activeColor: Colors.blue.shade900,
                               
    
                               ),
                               SizedBox( width: 10,),
                               Text('Less then 1 year',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
    
                             ],
                           ),
                           Row(
                             children: [
                               Radio(
                                 
                               value: 3,
                               groupValue: _exp,
                               onChanged: (value) {
                                 setState(() {
                                  _exp = value!;
                                });
                               },
                                activeColor: Colors.blue.shade900,
                               
    
                               ),
                               SizedBox( width: 10,),
                               Text('1-2 years',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
    
                             ],
                           ),
                           Row(
                             children: [
                               Radio(
                                 
                               value: 4,
                               groupValue: _exp,
                               onChanged: (value) {
                                 setState(() {
                                  _exp = value!;
                                });
                               },
                                activeColor: Colors.blue.shade900,
                               
    
                               ),
                               SizedBox( width: 10,),
                               Text('3-4 Year',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
    
                             ],
                           ),
                           Row(
                             children: [
                               Radio(
                                 
                               value: 4,
                               groupValue: _exp,
                               onChanged: (value) {
                                 setState(() {
                                  _exp = value!;
                                });
                               },
                                activeColor: Colors.blue.shade900,
                               
    
                               ),
                               SizedBox( width: 10,),
                               Text('5-10 Year',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
    
                             ],
                           ),
                           Divider(
          height: 20,
          thickness: 2,
          indent: 10,
          endIndent: 10,
        ),
        
                          
                         ],
                       ),
                       
      Padding(
                         padding: const EdgeInsets.only(top: 10,left: 10),
                         child: Row(
                                     children: [
                                       Text('Education',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                                     ],
                                   ),
                       ),
                       Column(mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Row(
                             children: [
                               Radio(
                                 
                               value: 1,
                               groupValue: _edu,
                               onChanged: (value) {
                                 setState(() {
                                  _edu = value!;
                                });
                               },
                                activeColor: Colors.blue.shade900,
    
                               ),
                               SizedBox( width: 10,),
                               Text('Matric',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
    
                             ],
                           ),
                           Row(
                             children: [
                               Radio(
                                 
                               value: 2,
                               groupValue: _edu,
                               onChanged: (value) {
                                 setState(() {
                                  _edu = value!;
                                });
                               },
                                activeColor: Colors.blue.shade900,
                               
    
                               ),
                               SizedBox( width: 10,),
                               Text('Inter',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
    
                             ],
                           ),
                           Row(
                             children: [
                               Radio(
                                 
                               value: 3,
                               groupValue: _edu,
                               onChanged: (value) {
                                 setState(() {
                                  _edu = value!;
                                });
                               },
                                activeColor: Colors.blue.shade900,
                               
    
                               ),
                               SizedBox( width: 10,),
                               Text('Graduate',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
    
                             ],
                           ),
                           Row(
                             children: [
                               Radio(
                                 
                               value: 4,
                               groupValue: _edu,
                               onChanged: (value) {
                                 setState(() {
                                  _edu = value!;
                                });
                               },
                                activeColor: Colors.blue.shade900,
                               
    
                               ),
                               SizedBox( width: 10,),
                               Text('Master',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
    
                             ],
                           ),
                           
                           Divider(
          height: 20,
          thickness: 2,
          indent: 10,
          endIndent: 10,
        ),
        
                          
                         ],
                       ),
                       
      
             
            
            
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
    
          onPressed: () {
            Navigator.push(context, (MaterialPageRoute(builder: (context)=>pvtjobs())));
            // Perform update action here
          },
          label: Icon(Icons.done_all),
         
          backgroundColor: Colors.blue.shade900,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}