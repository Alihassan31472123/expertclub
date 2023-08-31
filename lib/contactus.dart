import 'package:career_edu/expertclubacces.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'about.dart';
import 'coaching.dart';

class contactus extends StatefulWidget {
  const contactus({super.key});

  @override
  State<contactus> createState() => _contactusState();
}

class _contactusState extends State<contactus> {
 int _selectedTab = 3;

   List _pages = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("About"),
    ),
    Center(
      child: Text("Products"),
    ),
    Center(
      child: Text("Contact"),
    ),
    Center(
      child: Text("Settings"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: PreferredSize(preferredSize: Size.fromHeight(70.0),child: AppBar(
        
        backgroundColor: Colors.blue.shade900,
        centerTitle: false,
        leading: InkWell(
          onTap: () {
            Navigator.push(context, (MaterialPageRoute(builder: (context)=>Access())));
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
       bottomNavigationBar: BottomNavigationBar(
  currentIndex: _selectedTab,
  onTap: (index) => _changeTab(index),
  selectedItemColor: Colors.blue.shade900,
  unselectedItemColor: Colors.grey,
  items: [
    BottomNavigationBarItem(
      icon: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Access()),
          );
        },
        child: Icon(
          Icons.home,
          color: _selectedTab == 0 ? Colors.blue.shade900 : Colors.grey,
        ),
      ),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => coaching()),
          );
        },
        child: Icon(
          Icons.import_contacts,
          color: _selectedTab == 1 ? Colors.blue.shade900 : Colors.grey,
        ),
      ),
      label: "Coaching",
    ),
    BottomNavigationBarItem(
      icon: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => About()),
          );
        },
        child: Icon(
          Icons.contacts,
          color: _selectedTab == 2 ? Colors.blue.shade900 : Colors.grey,
        ),
      ),
      label: "About",
    ),
    BottomNavigationBarItem(
      icon: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => contactus()),
          );
        },
        child: Icon(
          Icons.info,
          color: _selectedTab == 3 ? Colors.blue.shade900 : Colors.grey,
        ),
      ),
      label: "Contact Us",
    ),
  ],
),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Padding(
                    padding: const EdgeInsets.only(left: 0,top: 10),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text(
      'Get In Touch',
      style: GoogleFonts.lato(
      color: Colors.black,
        fontSize: 25,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.italic,
      ),
    ),
                      ],
                    ),
                    
                  ),
                ],
              ),
               Container(
                 padding: EdgeInsets.all(20.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     ContactInfo(
                       icon: Icons.home,
                       title: '2nd Floor, The Arcadian Plaza, Koh e Noor City',
                       subtitle: 'Faisalabad, Pakistan',
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 10),
                       child: ContactInfo(
                         icon: Icons.phone,
                         title: '(041) 8501991 - 92',
                         subtitle: 'Mon to Fri 9am to 6pm',
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 10),
                       child: ContactInfo(
                         icon: Icons.email,
                         title: 'Email',
                         subtitle: 'Send us your query anytime!',
                       ),
                     ),
                   ],
                 ),
               ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      child: Form(
                        child: Column(
                          children: [
                            TextFormField(
                              maxLines: 5,
                              decoration: InputDecoration(
                                labelText: 'Enter Message',
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Enter your name',
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Email',
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Enter Subject',
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Padding(
  padding: const EdgeInsets.only(top: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => contactus()),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.blue.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: Size(140, 40),
        ),
        child: Text(
          'Send',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
      ),
    ],
  ),
)
                          ],
                          
                        ),
                        
                      ),
                      
                    ),
                    
                  ),
                 
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  ContactInfo({required this.icon, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 10.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(subtitle),
          ],
        ),
      ],
    );
  }
}