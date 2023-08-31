import 'package:career_edu/JOBS.dart';
import 'package:career_edu/about.dart';
import 'package:career_edu/gservices.dart';
import 'package:career_edu/public_services.dart';
import 'package:career_edu/studydisplay.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'business.dart';
import 'coaching.dart';
import 'contactus.dart';
import 'finance.dart';
import 'govtschemtabs.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Access extends StatefulWidget {
  const Access({super.key});

  @override
  State<Access> createState() => _AccessState();
}

class _AccessState extends State<Access> {
  int _selectedTab = 0;

  

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: Colors.blue.shade900,
            centerTitle: false,
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
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  'John Doe',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  'johndoe@example.com',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('lib/images/user.jpg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                ),
              ),
              ListTile(
                leading: Icon(Icons.person_2_outlined),
                title: Text('Profile'),
                onTap: () {
                  Navigator.pop(context);
                  // Handle drawer item tap
                },
              ),
              Divider(
                thickness: 3,
              ),
              
              
             
              ListTile(
                leading: Icon(Icons.logout_outlined),
                title: Text('Log out'),
                onTap: () {
                  Navigator.pop(context);
                  // Handle drawer item tap
                },
              ),
              Divider(
                thickness: 3,
              ),
            ],
          ),
        ),
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

        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Browse From Top',
                    style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Categories',
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Browse our top categories to quickly and easily",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " find what you need from our most",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "popular and relevant content",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 200,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.grey.shade300,
                          offset: new Offset(
                            3.3,
                            3.3,
                          ),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 30.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(54, 127, 255, 0.1),
                                      blurRadius: 60.0,
                                      offset: Offset(0, 15),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Image.asset(
                                    'lib/images/jobssvg.png',
                                    width: 30.0,
                                    height: 30.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                "Jobs",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Search and apply for the latest job ",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 0),
                              child: Text(
                                "opportunities in your area.",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyTabs()),
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
                                  'BROWSE JOBS',
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
                  Container(
                    height: 200,
                    width: 170,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      new BoxShadow(
                        color: Colors.grey.shade300,
                        offset: new Offset(
                          3.3,
                          3.3,
                        ),
                      )
                    ]),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(54, 127, 255, 0.1),
                                      blurRadius: 60.0,
                                      offset: Offset(0, 15),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Image.asset(
                                    'lib/images/gov_icon.png',
                                    width: 40.0,
                                    height: 40.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Text(
                                "Govt Schemes",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "One click solution for all your ",
                                style:
                                    TextStyle(fontSize: 8, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 0),
                              child: Text(
                                "Documation need including,",
                                style:
                                    TextStyle(fontSize: 8, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 34),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyTabs2()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue.shade900,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  minimumSize: Size(130, 40),
                                ),
                                child: Text(
                                  'Explore',
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 200,
                    width: 170,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      new BoxShadow(
                        color: Colors.grey.shade300,
                        offset: new Offset(
                          3.3,
                          3.3,
                        ),
                      )
                    ]),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(54, 127, 255, 0.1),
                                      blurRadius: 60.0,
                                      offset: Offset(0, 15),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    'lib/images/pubserv.svg',
                                    width: 40.0,
                                    height: 40.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Public Services",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Companies or organizations that provide",
                                style:
                                    TextStyle(fontSize: 8, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 0),
                              child: Text(
                                "essential services such as Electricity, Gas.",
                                style:
                                    TextStyle(fontSize: 8, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyTabs3()),
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
                                  'Explore',
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
                  Container(
                    height: 200,
                    width: 170,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      new BoxShadow(
                        color: Colors.grey.shade300,
                        offset: new Offset(
                          3.3,
                          3.3,
                        ),
                      )
                    ]),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(54, 127, 255, 0.1),
                                      blurRadius: 60.0,
                                      offset: Offset(0, 15),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    'lib/images/govtservices1.svg',
                                    width: 35.0,
                                    height: 35.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 17),
                              child: Text(
                                "Govt Services",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "One-stop solution for all your identity and",
                                style:
                                    TextStyle(fontSize: 8, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 0),
                              child: Text(
                                "documentation needs, including NADRA,",
                                style:
                                    TextStyle(fontSize: 8, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => gservices()),
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
                                  'Explore',
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 200,
                    width: 170,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      new BoxShadow(
                        color: Colors.grey.shade300,
                        offset: new Offset(
                          3.3,
                          3.3,
                        ),
                      )
                    ]),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(54, 127, 255, 0.1),
                                      blurRadius: 60.0,
                                      offset: Offset(0, 15),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    'lib/images/buslic.svg',
                                    width: 35.0,
                                    height: 35.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Business License/",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Registration",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "FBR, PRA, SECP, IPO Pakistan,",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 0),
                              child: Text(
                                "Excise & Taxation,",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 19),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => busy()),
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
                                  'Explore',
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
                  Container(
                    height: 200,
                    width: 170,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      new BoxShadow(
                        color: Colors.grey.shade300,
                        offset: new Offset(
                          3.3,
                          3.3,
                        ),
                      )
                    ]),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(54, 127, 255, 0.1),
                                      blurRadius: 60.0,
                                      offset: Offset(0, 15),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    'lib/images/studyavenue.svg',
                                    width: 35.0,
                                    height: 35.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Study Avenue",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Different paths learning ",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 0),
                              child: Text(
                                " globally.",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 33),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => study()),
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
                                  'Explore',
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 170,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      new BoxShadow(
                        color: Colors.grey.shade300,
                        offset: new Offset(
                          3.3,
                          3.3,
                        ),
                      )
                    ]),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(54, 127, 255, 0.1),
                                      blurRadius: 60.0,
                                      offset: Offset(0, 15),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    'lib/images/financial12.svg',
                                    width: 35.0,
                                    height: 35.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Financial Services",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                "Banks, Insurance,... ",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => finance()),
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
                                  'Explore',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
