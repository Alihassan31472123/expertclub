import 'package:career_edu/JOBS.dart';
import 'package:career_edu/jobsperview.dart';
import 'package:flutter/material.dart';

import 'findjobfilter.dart';

class pvtjobs extends StatefulWidget {
  const pvtjobs({super.key});

  @override
  State<pvtjobs> createState() => _pvtjobsState();
}

class _pvtjobsState extends State<pvtjobs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    
        appBar: AppBar(
          title: Text('Private Jobs'),
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
       
    
       Row(
        children: [
          InkWell(
            onTap: () {
               Navigator.push(context, (MaterialPageRoute(builder: (context)=>jobpr())));
            },
            child: Container(
              height: 90,
              width: 130,
              color: Colors.white,
              child: const Center(child: Icon(Icons.business,size: 40,color: Colors.grey,)),
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
                  padding: const EdgeInsets.only(left: 10,top: 0),
                  child: Text('Customer Support Repersentative',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 25),
                  child: Text('Affinity Pvt Ltd',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),
                    ),
                    
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 45),
                  child: Text('Lahore',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),
                    ),
                    
                    
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60,top: 48),
                  child: Container(
                    height: 13,
                    width: 2,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70,top: 45),
                  child: Text('Mar 25, 2023',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.lightBlue.shade700),
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
            child: Center(child: Icon(Icons.business,size: 40,color: Colors.grey,)),
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
                  child: Text('Affinity Pvt Ltd',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),
                    ),
                    
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 45),
                  child: Text('Lahore',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),
                    ),
                    
                    
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60,top: 48),
                  child: Container(
                    height: 13,
                    width: 2,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70,top: 45),
                  child: Text('Mar 25, 2023',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.lightBlue.shade700),
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
            child: Center(child: Icon(Icons.business,size: 40,color: Colors.grey,)),
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
                  child: Text('Affinity Pvt Ltd',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),
                    ),
                    
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 45),
                  child: Text('Lahore',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),
                    ),
                    
                    
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60,top: 48),
                  child: Container(
                    height: 13,
                    width: 2,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70,top: 45),
                  child: Text('Mar 25, 2023',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.lightBlue.shade700),
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
            child: Center(child: Icon(Icons.business,size: 40,color: Colors.grey,)),
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
                  child: Text('Affinity Pvt Ltd',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),
                    ),
                    
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 45),
                  child: Text('Lahore',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),
                    ),
                    
                    
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60,top: 48),
                  child: Container(
                    height: 13,
                    width: 2,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70,top: 45),
                  child: Text('Mar 25, 2023',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.lightBlue.shade700),
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