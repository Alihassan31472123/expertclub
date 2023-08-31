import 'package:career_edu/coaching.dart';
import 'package:career_edu/expertclubacces.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'contactus.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  int _selectedTab = 02;

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      appBar: AppBar(
        title: Text('About'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, (MaterialPageRoute(builder: (context) => Access())));
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 250,
                  width: 370,
                  child: Carousel(
                    images: const [
                      AssetImage("lib/images/about.png"),
                      AssetImage("lib/images/about2.png"),
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
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            'About Expert Club',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'Welcome to our comprehensive platform, where you\'ll find a wide array of services all in one place. From government services to public services, financial assistance, and career opportunities, we\'ve got you covered with just a single click. Our primary goal is to streamline your search process, making it effortless and convenient. Say goodbye to the need for multiple website visits to find the services you need, including job listings. Stay connected with us to receive regular updates and enjoy a hassle-free experience.',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 16.0),
                    child: Text(
                      'Motive Behind Expert Club',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Motive behind this platform is to reduce unemployment in our society by implementing effective measures and strategies. We offer refined job opportunities to our users, ensuring that they have access to the latest updates with just a single click.',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 250,
                  width: 370,
                  child: Carousel(
                    images: const [
                     
                      AssetImage("lib/images/ceo.png"),
                    ],
                    borderRadius: true,
                    radius: const Radius.circular(30),
                    
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: const Duration(
                      milliseconds: 800,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CEO',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: RichText(
                      text: TextSpan(
                        text: 'As the CEO of ',
                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'Expert Club',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                ', I am proud to lead a team of experts dedicated to driving success for our clients. On behalf of our entire team, I would like to extend a warm welcome to our comprehensive platform. Here, you\'ll discover a vast range of services conveniently consolidated in a single location. Whether you\'re seeking government services, public assistance, financial support, or exciting career opportunities, we are dedicated to meeting your needs with a simple click.\n\nThank you for choosing our platform, where we aim to minimize your workload and create ease in your search for a brighter future.',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
