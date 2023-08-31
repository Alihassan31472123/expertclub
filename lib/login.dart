import 'package:career_edu/expertclubacces.dart';

import 'package:flutter/material.dart';

import 'newscreen.dart';

const kMyColor = Color(0x00000000dff);


class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
  
}

class _LoginState extends State<Login> {
  bool _isChecked= false;  
  @override
  Widget build(BuildContext context) {

    
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            
             Padding(
               padding: const EdgeInsets.only(left: 70),
               child: Row(
                 children: [
                   Container(
                          height: 150,
                          width: 240,
                          child: Image.asset('lib/images/expclub.png',fit: BoxFit.fitWidth,),
                        ),
                 ],
               ),
             ),
             Container(
               height: 60,
               
               margin: const EdgeInsets.only(left: 15,right: 25,top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                
                boxShadow: [BoxShadow(
                  blurRadius: 3,
                  spreadRadius: 3,
                  
                  color: Colors.grey.shade200,
                )]
              ),
               child: TextField(
                  
                  decoration: InputDecoration(
                    
                    
                    hintText: 'Email ID',
                    
                    fillColor: Colors.white,
                    filled: true,
                    
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade500,
                        
                      ),
                      borderRadius: BorderRadius.circular(10),
                     
                      
                    )
                  ),
                ),
             ),
              Container(
                height: 55,
               margin: const EdgeInsets.only(left: 15,right: 25,top: 30),
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                  blurRadius: 3,
                  spreadRadius: 3,
                  
                  color: Colors.grey.shade300,
                  
                )]
              ),
               child: TextField(
                  
                  decoration: InputDecoration(
                    
                    
                    hintText: 'Password',
                    fillColor: Colors.white,
                    filled: true,
                    
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10),
                     
                      
                    ),
                    
                  
                  ),
                ),
             ),
              Padding(
               padding: const EdgeInsets.only(left: 0,top: 30),
               child: Row(
                 children: [
                  
                 Container(
            padding: EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isChecked = !_isChecked;
                });
              },
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: _isChecked ? Colors.blue.shade900 : Colors.grey,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                  color: _isChecked ? Colors.blue.shade900 : Colors.white,
                ),
                child: _isChecked
                    ? Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 16.0,
                      )
                    : null,
              ),
            ),
          ),

                   const Text('Remember me',style: TextStyle(fontWeight: FontWeight.bold),),
                   const Padding(
                     padding: EdgeInsets.only(left: 130),
                     child: Text('Forget Password?',style: TextStyle(fontWeight: FontWeight.bold),),
                   ),
                 ],
               ),
             ),
            Padding(
  padding: const EdgeInsets.only(top: 30),
  child: Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Access()),
            );
          },
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Access()),
              );
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              primary: Colors.blue.shade900,
              onPrimary: Colors.white,
              elevation: 1,
            ),
            child: Container(
              height: 50,
              width: 360,
              child: const Center(
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  ),
),

           Padding(
             padding: const EdgeInsets.only(top: 10),
             child: Row(mainAxisAlignment: MainAxisAlignment.center,
               children: const [
                 Center(child: Text('or Sign up with',style :TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),),
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 10,top: 20),
             child: Row(
               children: [
                Container(
              height: 60,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50)
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 140,
                    color: Colors.white,
                    child: Image.asset('lib/images/googlelogo.jpg',fit: BoxFit.cover,),
                  )
                ],
              ),
            ),
            
    
    
                
                 Padding(
                   padding: const EdgeInsets.only(left: 45),
                   child: Container(
              height: 60,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.indigo.shade800,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Facebook',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
                 ),
               ],
             ),
           ),
           Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Don't have an account?"),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text('Sign Up',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
          
            
          ],
        ),
        
      ),
    );
  }
}
void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}