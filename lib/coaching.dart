import 'package:career_edu/expertclubacces.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'about.dart';
import 'axplorecoaching.dart';
import 'contactus.dart';

class coaching extends StatefulWidget {
  const coaching({super.key});

  @override
  State<coaching> createState() => _coachingState();
}

class _coachingState extends State<coaching> {
  int _selectedTab = 01;

  

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
        title: Text('Coaching'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        leading: InkWell(
          onTap: () {
             Navigator.push(context, (MaterialPageRoute(builder: (context)=>Access())));
          },
          child: Icon(
            
            Icons.arrow_back),
        ),

      ),
      body: ListView(
        children: [
          Padding(
                       padding: const EdgeInsets.only(top: 10),
                       child: Row(mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           
                           Container(
                             decoration: BoxDecoration(
                               color: Colors.pink.shade100,
                               borderRadius: BorderRadius.circular(30),
                               
                             ),
                             height: 300,
                             width: 370,
                             child: Carousel(
                               images: const [
                                 AssetImage("lib/images/coaching2.png"),
                                 AssetImage("lib/images/coaching3.png"),
                                 AssetImage("lib/images/coaching4.png"),
                                 AssetImage("lib/images/coaching5.png"),
                                 AssetImage("lib/images/ceo.png"),
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
                     Container(
  child: Column(
    children: [
      Container(
        margin: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Career Coaching',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Our team of expert career coaches is here to guide you in career counseling, empowering you to define your goals and develop effective strategies for success. Overcome obstacles with their support, and gain clarity on your true aspirations and passions.',
              style: TextStyle(fontSize: 16.0),
            ),
           SizedBox(height: 16.0),
ElevatedButton(
  onPressed: () {
    Navigator.push(context, (MaterialPageRoute(builder: (context)=>JobOpportunitiesScreen())));// Handle button press
  },
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade900),
  ),
  child: Text('Explore'),
),

          ],
        ),
      ),
    ],
  ),
),

Container(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Coaching for Scholarship',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Our team of expert coaches offers magical guidance for scholarships, both locally and globally. Let our experts illuminate your path, helping you navigate the scholarship landscape with ease. Whether it\'s securing funding for local educational opportunities or exploring scholarships worldwide, our coaches will empower you to reach new heights and turn your dreams into reality.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    ],
  ),
),
Container(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Life Coaching',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Our team of expert coaches is here to guide and empower you in your life coaching experience. With their magical support, discover your true potential, overcome challenges, and create a life that aligns with your deepest desires. Let our coaches be your guiding light as you embark on a transformative path towards personal growth and fulfillment.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    ],
  ),
),
Container(
  width: double.infinity,
  child: Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(vertical: 16.0),
        child: Card(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Plus',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                    
                  ),
                ),
                Text(
                  '\$9/month',
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                Divider(),
                Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text('5 Users'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text('50GB Storage'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text('Unlimited Public Projects'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text('Community Access'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text('Unlimited Private Projects'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text('Dedicated Phone Support'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text('Free Subdomain'),
                    ),
                    ListTile(
                      leading: Icon(Icons.close),
                      title: Text(
                        'Monthly Status Reports',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade900),
  ),
                    onPressed: () {
                      // Handle button press
                    },
                    child: Text('Button'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  ),
),
Container(
  width: double.infinity,
  child: Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(vertical: 16.0),
        child: Card(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Plus',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                    
                  ),
                ),
                Text(
                  '\$49/month',
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                Divider(),
                Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text('Unlimited Users'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text('50GB Storage'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text('Unlimited Public Projects'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text('Community Access'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text('Unlimited Private Projects'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text('Dedicated Phone Support'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text('Free Subdomain'),
                    ),
                    ListTile(
                      leading: Icon(Icons.close),
                      title: Text(
                        'Monthly Status Reports',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade900),
  ),
                    onPressed: () {
                      // Handle button press
                    },
                    child: Text('Button'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  ),
)





        ],
      ),
    );  
  }
}