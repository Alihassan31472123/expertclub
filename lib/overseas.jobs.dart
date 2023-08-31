import 'package:career_edu/JOBS.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'findjobfilter.dart';

class overjobs extends StatefulWidget {
  const overjobs({super.key});

  @override
  State<overjobs> createState() => _overjobsState();
}

class _overjobsState extends State<overjobs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    
        appBar: AppBar(
          title: Text('Overseas'),
          leading: InkWell(
            onTap: () {
               Navigator.push(context, (MaterialPageRoute(builder: (context)=>MyTabs())));
            },
            child: Icon(Icons.arrow_back)),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
        ),
        body: ListView(
          children: [
             Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 360,
           
              child: TextField(
                
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                
              hintText: 'Job, title, Skills or Company',hintStyle: TextStyle(color: Colors.grey),
              
            ),
      
            ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 360,
           
              child: TextField(
                
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                
              hintText: 'City, Province, Region',hintStyle: TextStyle(color: Colors.grey),
              
            ),
      
            ),
            ),
          ],
        ),
      ),
      Padding(
         padding: const EdgeInsets.only(left: 10,top: 10),
         child: Row(
           children: [
             Container(
               height: 40,
               width: 40,
               decoration: BoxDecoration(
                 color: Colors.blue.shade900,
                 borderRadius: BorderRadius.circular(8),
                 
               ),
               child: Center(child: InkWell(
                 onTap: (){
                     Navigator.push(context, (MaterialPageRoute(builder: (context)=>Filter())));
                   },
                 child: Icon(Icons.tune,color: Colors.white,),
                 ),
                 ),
             ),
           ],
         ),
       ),
        Padding(
         padding: const EdgeInsets.only(top: 10),
         child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('To Explore Overseas Jobs Upgrade ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ],
       
       
         ),
       ),
      
                       Padding(
                                      padding: const EdgeInsets.only(left: 0),
                                      child: InkWell(
                                        onTap: () {
                                          showModalBottomSheet(
                                            backgroundColor: Colors.transparent,
                                              context: context,
                                              builder: (BuildContext context) {
                                                return Container(
                                                 
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius: BorderRadius.only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            30),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            30))),
                                                  child: ListView(
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 10),
                                                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                                              children: const [
                                                                Text("Upgrade Yourself Now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                                              ],
                                                            ),
                                                          ),
                                                           Padding(
                                                            padding: const EdgeInsets.only(left: 20,top: 10,right: 10),
                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                              children: [
                                                                Container(
                                                                                    height: 50,
                                                                                    width: 150,
                                                                                    child: TextField(
                                                                                    decoration: InputDecoration(
                                                                                      labelText: 'Expiry Date',
                                                                                      
                                                                                      
                                                                                    ),
                                                                                    keyboardType: TextInputType.number,
                                                                                    inputFormatters: <TextInputFormatter>[
                                                                                      FilteringTextInputFormatter.digitsOnly,
                                                                                    ]
                                                                                      
                                                                                    
                                                                                  ),
                                                                                  ),
                                                                                 
                                                                                  Container(
                                                                                    height: 50,
                                                                                    width: 150,
                                                                                    child: TextField(
                                                                                    decoration: InputDecoration(
                                                                                      labelText: 'Security Code',
                                                                                      
                                                                                      
                                                                                    ),
                                                                                    keyboardType: TextInputType.number,
                                                                                    inputFormatters: <TextInputFormatter>[
                                                                                      FilteringTextInputFormatter.digitsOnly,
                                                                                    ]
                                                                                      
                                                                                    
                                                                                  ),
                                                                                  )
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 10,top: 10),
                                                            child: Container(
                                                                                    height: 50,
                                                                                    width: 340,
                                                                                    child: TextField(
                                                                                    decoration: InputDecoration(
                                                                                      
                                                                                      labelText: 'Card Number',
                                                                                      suffixIcon: Icon(Icons.credit_card,color: Colors.blue.shade900,),
                                                                                      
                                                                                      
                                                                                    ),
                                                                                    
                                                                                    keyboardType: TextInputType.number,
                                                                                    inputFormatters: <TextInputFormatter>[
                                                                                      FilteringTextInputFormatter.digitsOnly,
                                                                                    ]
                                                                                      
                                                                                    
                                                                                  ),
                                                                                  ),
                                                                                  
                                                          ),
                                                          
                                                         
                                                         
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 10,top: 10),
                                                            child: Container(
                                                                                    height: 50,
                                                                                    width: 340,
                                                                                    child: TextField(
                                                                                    decoration: InputDecoration(
                                                                                      
                                                                                      labelText: "Name on Card",
                                                                                      suffixIcon: Icon(Icons.person,color: Colors.blue.shade900,),
                                                                                      
                                                                                      
                                                                                    ),
                                                                                    
                                                                                    keyboardType: TextInputType.number,
                                                                                    inputFormatters: <TextInputFormatter>[
                                                                                      FilteringTextInputFormatter.digitsOnly,
                                                                                    ]
                                                                                      
                                                                                    
                                                                                  ),
                                                                                  ),
                                                                                  
                                                          ),
                                                          Padding(
                   padding: const EdgeInsets.only(left: 20,top: 10),
                   child: Row(
                     children: [
                       Container(
                         height: 25,
                         width: 25,
                         color: Colors.white,
                         child: Icon(Icons.check_box,size: 25,color: Colors.blue.shade900)),
                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child: Text('Remember me',style: TextStyle(fontWeight: FontWeight.bold),),
                       ),
                       
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 10),
                   child: Row(mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                         height: 50,
                         width: 340,
                         decoration: BoxDecoration(
                             color: Colors.blue.shade900,
                             borderRadius:
                                 BorderRadius.circular(30)),
                         child: Center(
                           child: Text(
                             'Upgrade Now',
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
                                                         
                                                         
                                                         
                                                          
                                                         
                                                          
                                                         
                                                         
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              });
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(top:10),
                                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 50,
                                                width: 120,
                                                decoration: BoxDecoration(
                                                    color: Colors.blue.shade900,
                                                    borderRadius:
                                                        BorderRadius.circular(15)),
                                                child: Center(
                                                  child: Text(
                                                    'Upgrade',
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
                                      ),
                                    ),
    
       
    
       Padding(
         padding: const EdgeInsets.only(top: 10),
         child: Row(
          children: [
            Container(
              height: 90,
              width: 130,
              color: Colors.white,
              child: Center(child: Icon(Icons.blur_off,size: 40,color: Colors.grey,)),
            ),
             Stack(
               children: [
                 Container(
                  height: 80,
                  width: 260,
                  color: Colors.white,
                  
       
                  
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 0),
                    child: Text('WAPDA Electercity',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 25),
                    child: Container(
                      height: 10,
                      width: 130,
                      color: Colors.grey,
                    ),
                      
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 45),
                    child: Container(
                      height: 10,
                      width: 170,
                      color: Colors.grey,
                    ),
                      
                      
                  ),
                 
               ],
             ),
          ],
           ),
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
            child: Center(child: Icon(Icons.blur_off,size: 40,color: Colors.grey,)),
          ),
           Stack(
             children: [
               Container(
                height: 80,
                width: 260,
                color: Colors.white,
                
    
                
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 0),
                  child: Text('Department Govt Punjab',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                  ),
                ),
               Padding(
                    padding: const EdgeInsets.only(left: 10,top: 25),
                    child: Container(
                      height: 10,
                      width: 130,
                      color: Colors.grey,
                    ),
                      
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 45),
                    child: Container(
                      height: 10,
                      width: 170,
                      color: Colors.grey,
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
            child: Center(child: Icon(Icons.blur_off,size: 40,color: Colors.grey,)),
          ),
           Stack(
             children: [
               Container(
                height: 80,
                width: 260,
                color: Colors.white,
                
    
                
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 0),
                  child: Text('Govt Officer',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                  ),
                ),
               Padding(
                    padding: const EdgeInsets.only(left: 10,top: 25),
                    child: Container(
                      height: 10,
                      width: 130,
                      color: Colors.grey,
                    ),
                      
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 45),
                    child: Container(
                      height: 10,
                      width: 170,
                      color: Colors.grey,
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
            child: Center(child: Icon(Icons.blur_off,size: 40,color: Colors.grey,)),
          ),
           Stack(
             children: [
               Container(
                height: 80,
                width: 260,
                color: Colors.white,
                
    
                
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 0),
                  child: Text('Customer Support Repersentative',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                  ),
                ),
               Padding(
                    padding: const EdgeInsets.only(left: 10,top: 25),
                    child: Container(
                      height: 10,
                      width: 130,
                      color: Colors.grey,
                    ),
                      
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 45),
                    child: Container(
                      height: 10,
                      width: 170,
                      color: Colors.grey,
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