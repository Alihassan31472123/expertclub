import 'package:career_edu/coaching.dart';
import 'package:flutter/material.dart';

class JobOpportunitiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(70.0),child: AppBar(
        
        backgroundColor: Colors.blue.shade900,
        centerTitle: false,
        leading: InkWell(
          onTap: () {
            Navigator.push(context, (MaterialPageRoute(builder: (context)=>coaching())));
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
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            'Seeking an Ideal Job Opportunities',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            'When it comes to seeking an ideal job opportunity, our team of expert coaches is here to guide and support you throughout the entire process. Our dedicated coaches provide personalized guidance, helping you identify your unique strengths, skills, and career goals. With their extensive knowledge and experience, they offer valuable insights into the current job market, industry trends, and effective job search techniques.',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            'CV Writing Tips',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            'Our expert coaches provide valuable guidance in CV writing, tailoring it to highlight relevant skills and experiences. They structure and format the CV for clarity and visual appeal. Coaches showcase achievements and optimize keywords for ATS scans. They proofread, edit, and offer feedback to refine the CV\'s content and presentation. With their assistance, you can create a compelling CV, increasing your chances of securing interviews and standing out to potential employers.',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            'Interview Tips',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            'Our expert coaches provide valuable guidance in interview tips. They help you prepare for specific interviews by researching the company and tailoring your responses. Coaches conduct mock interviews and offer feedback to improve your performance. They assist in developing strong talking points and enhancing communication skills. Coaches prepare you for challenging questions and provide guidance on building rapport and professional etiquette. With their assistance, you can excel in job interviews, effectively communicate your qualifications, and increase your chances of securing the desired job opportunity.',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            'Summary',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Published on:'),
                              Text(
                                '12 Nov, 2019',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            "Feeling unsure about what to do? Don't worry! We're here to help you out.",
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        ElevatedButton(
  onPressed: () {
    // Handle button press
  },
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade900),
  ),
  child: Text('Hire Assistant'),
),
                        SizedBox(height: 16.0),
                        Container(
                          margin: EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            'Video Section',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
