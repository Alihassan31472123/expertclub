import 'package:career_edu/privatejobsdisplay.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class jobpr extends StatefulWidget {
  const jobpr({super.key});

  @override
  State<jobpr> createState() => _jobprState();
}

class _jobprState extends State<jobpr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.push(context,
                  (MaterialPageRoute(builder: (context) => pvtjobs())));
            },
            child: Icon(Icons.arrow_back)),
        title: Text('Job Description'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'lib/images/jobss1221.png',
                                  width: 30,
                                  height: 70,
                                ),
                                SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Software Engineer',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on, size: 16),
                                        Text('California, USA'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.access_time, size: 16),
                                        Text('Part-time'),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            IconButton(
                              icon: Icon(Icons.favorite),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Job description',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.\n\nVariations of passages of lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Responsibility',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    '- The applicants should have experience in the following areas.'),
                                Text(
                                    '- Have sound knowledge of commercial activities.'),
                                Text(
                                    '- Leadership, analytical, and problem-solving abilities.'),
                                Text(
                                    '- Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Qualifications',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    '- The applicants should have experience in the following areas.'),
                                Text(
                                    '- Have sound knowledge of commercial activities.'),
                                Text(
                                    '- Leadership, analytical, and problem-solving abilities.'),
                                Text(
                                    '- Should have vast knowledge in IAS/ IFRS, Company Act, Income Tax, VAT.'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Benefits',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.',
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey.shade300,
                        thickness: 3,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Job Summary',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text('Published on: 12 Nov, 2019'),
                            Text('Vacancy: 2 Position'),
                            Text('Salary: 50k - 120k/y'),
                            Text('Location: California, USA'),
                            Text('Job Nature: Full-time'),
                            SizedBox(height: 16),
                            Text('HR contact Details:'),
                            Text('hr@gmail.com'),
                            SizedBox(height: 16),
                            Text('Share at:'),
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.facebook,
                                      color: Colors.blue.shade900),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(Icons.plus_one,
                                      color: Colors.blue.shade900),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.facebook,
                                      color: Colors.blue.shade900),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(Icons.plus_one,
                                      color: Colors.blue.shade900),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Text(
                                'Feeling unsure about what to do? Don\'t worry! We\'re here to help you out.'),
                            SizedBox(height: 8),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue.shade900,
                                  ),
                                  onPressed: () {},
                                  child: Text('Hire Assistant'),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Video Section',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const jobpr()),
                                );
                              },
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const jobpr()),
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
                                  width: 300,
                                  child: const Center(
                                    child: Text(
                                      'Apply Now',
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
                      Container(
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
