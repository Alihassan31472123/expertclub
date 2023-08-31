import 'package:career_edu/JOBS.dart';
import 'package:career_edu/findjobfilter.dart';
import 'package:career_edu/login.dart';
import 'package:career_edu/public_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'electercity.dart';
import 'fescoseaerch.dart';
import 'gservices.dart';

class khidmat extends StatefulWidget {
  @override
  _khidmatState createState() => _khidmatState();
}

class _khidmatState extends State<khidmat> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Khidmat Markaz'),
          centerTitle: true,
          leading: InkWell(
              onTap: () {
                Navigator.push(context,
                    (MaterialPageRoute(builder: (context) => gservices())));
              },
              child: const Icon(Icons.arrow_back)),
          backgroundColor: Colors.blue.shade900,
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: const [
              Tab(text: 'e Khidmat Markaz Services'),
              Tab(text: 'Punjab Social Protection Authority Services'),
              Tab(text: 'Industrial Services (ZTTS)'),
              Tab(text: 'Construction Industry Services'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        ListTile(
                          title: const Text(
                              'Transit Permit To Carry Wood Forest Produce'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/transit-permit-to-carry-wood-forest-produce"),
                        ),
                        ListTile(
                          title:
                              const Text('Warehouses Construction permit (Lahore)'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/warehouse-construction-permit-lahore"),
                        ),
                        ListTile(
                          title:
                              const Text('National Immunization Management System'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/national-immunization-management-system"),
                        ),
                        ListTile(
                          title: const Text('Issuance of fard for mutation'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/issuance-of-fard-for-mutation"),
                        ),
                        ListTile(
                          title: const Text('issuance of fard for bail)'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/issuance-of-fard-for-bail"),
                        ),
                        ListTile(
                          title: const Text('issuance of Fard for record'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/issuance-of-Fard-for-record"),
                        ),
                        ListTile(
                          title: const Text(
                              'Issuance of Challan for License Permit Fee'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/issuance-of-challan-for-license-permit-fee"),
                        ),
                        ListTile(
                          title: const Text('Nadra e-Sahulat'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/nadra-esahulat"),
                        ),
                        ListTile(
                          title: const Text('issuance of e-stamp paper'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/issuance-of-estamp-paper"),
                        ),
                        ListTile(
                          title: const Text('issuance of fard for nec'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/issuance-of-fard-for-nec"),
                        ),
                        ListTile(
                          title: const Text('issuance of property registry'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/issuance-of-property-registry"),
                        ),
                        ListTile(
                          title: const Text('Traffic e-challan Collection'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/Traffic-echallan-Collection"),
                        ),
                        ListTile(
                          title: const Text('duplicate driving License'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/duplicate-driving-license"),
                        ),
                        ListTile(
                          title: const Text('international driving license'),
                          onTap: () => launch(
                              "#https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/international-driving-license"),
                        ),
                        ListTile(
                          title: const Text('Character Certificate'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/character-certificate"),
                        ),
                        ListTile(
                          title: const Text('RENEWAL OF DRIVING LICENSE'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/renewal-of-driving-license"),
                        ),
                        ListTile(
                          title: const Text('birth Certificate'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/birth-certificate"),
                        ),
                        ListTile(
                          title: const Text('Death Certificate'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/Death-certificate"),
                        ),
                        ListTile(
                          title: const Text('Marriage Certificate'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/marriage-certificate"),
                        ),
                        ListTile(
                          title: const Text('Domicile Certificate'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/domicile-certificate"),
                        ),
                        ListTile(
                          title: const Text('Modification of Domicile Certificate'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/modification-of-domicile-certificate"),
                        ),
                        ListTile(
                          title: const Text('Divorce Certificate'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/divorce-certificate"),
                        ),
                        ListTile(
                          title: const Text(
                              'Issuance of Duplicate Domicile Certificate'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/issuance-of-duplicate-domicile-certificate"),
                        ),
                        ListTile(
                          title: const Text('Token Tax'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/token-tax"),
                        ),
                        ListTile(
                          title: const Text('CNIC'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/cnic"),
                        ),
                        ListTile(
                          title: const Text('Family Registeration Certificate'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/family-registration-certificate"),
                        ),
                        ListTile(
                          title: const Text('National Identity Card for Overseas'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/national-identity-card-for-overseas-pakistanis"),
                        ),
                        ListTile(
                          title: const Text('Child Registration Certificate'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/child-registration-certificate"),
                        ),
                        ListTile(
                          title: const Text('Juvenile Card'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/juvenile-card"),
                        ),
                        ListTile(
                          title: const Text('Federal Arms License (FAL)'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/juvenile-card"),
                        ),
                        ListTile(
                          title: const Text('Motor Vehicle Registration '),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/motor-vehicle-registration"),
                        ),
                        ListTile(
                          title: const Text('Police Verification Certificate'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/police-verification-certificate"),
                        ),
                        ListTile(
                          title: const Text('Vehicle Transfer Ownership  '),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/vehicle-transfer-ownership"),
                        ),
                        ListTile(
                          title: const Text('Learner Driving License '),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/learners-driving-license"),
                        ),
                        ListTile(
                          title: const Text('Building Plan Approval'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/building-plan-approval"),
                        ),
                        ListTile(
                          title: const Text('Change of Land Use'),
                          onTap: () => launch(
                              "https://ekhidmat.punjab.gov.pk/services/e-khidmat-marakaz/change-of-land-use"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        ListTile(
                          title: const Text('Ehsaas Rashan (Registration)'),
                          onTap: () => launch(
                              'https://ekhidmat.punjab.gov.pk/services/punjab-social-protection-authority/ehsaas-rashan-registration'),
                        ),
                        ListTile(
                          title: const Text('Ehsaas Rashan (Grievance)'),
                          onTap: () => launch(
                              'https://ekhidmat.punjab.gov.pk/services/punjab-social-protection-authority/ehsaas-rashan-grievance'),
                        ),
                        ListTile(
                          title: const Text('Ehsaas Rashan (Disbursement)'),
                          onTap: () => launch(
                              'https://ekhidmat.punjab.gov.pk/services/punjab-social-protection-authority/ehsaas-rashan-disbursement'),
                        ),
                        ListTile(
                          title: const Text('Ehsaas Tahafuz (Registration)'),
                          onTap: () => launch(
                              'https://ekhidmat.punjab.gov.pk/services/punjab-social-protection-authority/ehsaas-tahafuz-registration'),
                        ),
                        ListTile(
                          title: const Text('Ehsaas Tahafuz (Grievance)'),
                          onTap: () => launch(
                              'https://ekhidmat.punjab.gov.pk/services/punjab-social-protection-authority/ehsaas-tahafuz-grievance'),
                        ),
                        ListTile(
                          title: const Text('Ehsaas Tahafuz (Disbursement)'),
                          onTap: () => launch(
                              'https://ekhidmat.punjab.gov.pk/services/punjab-social-protection-authority/ehsaas-tahafuz-disbursement'),
                        ),
                        ListTile(
                          title: const Text('Patient With Disability'),
                          onTap: () => launch(
                              'https://ekhidmat.punjab.gov.pk/services/punjab-social-protection-authority/patient-with-disability'),
                        ),
                        ListTile(
                          title: const Text('Stipend Programme'),
                          onTap: () => launch(
                              'https://ekhidmat.punjab.gov.pk/services/punjab-social-protection-authority/stipend-programme'),
                        ),
                        ListTile(
                          title: const Text('Cash Transfer For Nutritional'),
                          onTap: () => launch(
                              'https://ekhidmat.punjab.gov.pk/services/punjab-social-protection-authority/cash-transfer-for-nutritional'),
                        ),
                        ListTile(
                          title: const Text('BRICK KILNS'),
                          onTap: () => launch(
                              'https://ekhidmat.punjab.gov.pk/services/punjab-social-protection-authority/brick-kilns'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Industrial Services (ZTTS)',
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
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Required Document for LGCD Residenal building',
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Table(
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                        ),
                        children: [
                          const Center(child: Text('Sr#')),
                          const Text('Document'),
                          const Center(child: Text('Original')),
                          const Center(child: Text('Photocopies')),
                          const Center(child: Text('Attestation')),
                          const Center(child: Text('Amount')),
                        ],
                      ),
                      const TableRow(
                        children: [
                          Center(child: Text('1')),
                          Text('Application'),
                          Center(child: Icon(Icons.check, color: Colors.green)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                        ],
                      ),
                      const TableRow(
                        children: [
                          Center(child: Text('2')),
                          Text('Copy of CNIC'),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.check, color: Colors.green)),
                          Center(child: Icon(Icons.close)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                        ],
                      ),
                      const TableRow(
                        children: [
                          Center(child: Text('3')),
                          Text('Proof of permanent office in Pakistan'),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.check, color: Colors.green)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                        ],
                      ),
                      const TableRow(
                        children: [
                          Center(child: Text('4')),
                          Text(
                              'ISO 9001 certification (before the award of work )'),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.check, color: Colors.green)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                        ],
                      ),
                      const TableRow(
                        children: [
                          Center(child: Text('5')),
                          Text('NTN No. / certificate'),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.check, color: Colors.green)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                        ],
                      ),
                      const TableRow(
                        children: [
                          Center(child: Text('6')),
                          Text('Technical staff list'),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.check, color: Colors.green)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                        ],
                      ),
                      const TableRow(
                        children: [
                          Center(child: Text('7')),
                          Text(
                              'Activities of the company with catalogues, broachers'),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.check, color: Colors.green)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                        ],
                      ),
                      const TableRow(
                        children: [
                          Center(child: Text('8')),
                          Text('Registration with SECP'),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.check, color: Colors.green)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Construction Industry Services',
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
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Required Document for LGCD Residenal building',
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Table(
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                        ),
                        children: [
                          const Center(child: Text('Sr#')),
                          const Text('Document'),
                          const Center(child: Text('Original')),
                          const Center(child: Text('Photocopies')),
                          const Center(child: Text('Attestation')),
                          const Center(child: Text('Amount')),
                        ],
                      ),
                      const TableRow(
                        children: [
                          Center(child: Text('1')),
                          Text('Application'),
                          Center(child: Icon(Icons.check, color: Colors.green)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                        ],
                      ),
                      const TableRow(
                        children: [
                          Center(child: Text('2')),
                          Text('Copy of CNIC'),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.check, color: Colors.green)),
                          Center(child: Icon(Icons.close)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                        ],
                      ),
                      const TableRow(
                        children: [
                          Center(child: Text('3')),
                          Text('Proof of permanent office in Pakistan'),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.check, color: Colors.green)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                        ],
                      ),
                      const TableRow(
                        children: [
                          Center(child: Text('4')),
                          Text(
                              'ISO 9001 certification (before the award of work )'),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.check, color: Colors.green)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                        ],
                      ),
                      const TableRow(
                        children: [
                          Center(child: Text('5')),
                          Text('NTN No. / certificate'),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.check, color: Colors.green)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                        ],
                      ),
                      const TableRow(
                        children: [
                          Center(child: Text('6')),
                          Text('Technical staff list'), 
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.check, color: Colors.green)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                        ],
                      ),
                      const TableRow(
                        children: [
                          Center(child: Text('7')),
                          Text(
                              'Activities of the company with catalogues, broachers'),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.check, color: Colors.green)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                        ],
                      ),
                      const TableRow(
                        children: [
                          Center(child: Text('8')),
                          Text('Registration with SECP'),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.check, color: Colors.green)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                          Center(child: Icon(Icons.close, color: Colors.red)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _listItem(String title, String url) {
  return ListTile(
    title: Text(title),
    onTap: () async {
      if (await canLaunch(url)) {
        await launch(url);
      }
    },
  );
}
