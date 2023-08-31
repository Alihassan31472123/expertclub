import 'package:career_edu/JOBS.dart';
import 'package:career_edu/business.dart';
import 'package:career_edu/companyformationdisplay.dart';
import 'package:career_edu/findjobfilter.dart';
import 'package:career_edu/login.dart';
import 'package:career_edu/pepco.dart';
import 'package:career_edu/pesco.dart';
import 'package:career_edu/public_services.dart';
import 'package:career_edu/qesco.dart';
import 'package:career_edu/trsco.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'fescoseaerch.dart';
import 'gepco.dart';
import 'hesco.dart';
import 'iesco.dart';
import 'lesco.dart';
import 'mepco.dart';

class secp extends StatefulWidget {
  @override
  _secpState createState() => _secpState();
}

class _secpState extends State<secp> with SingleTickerProviderStateMixin {
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
          title: const Text('SECP'),
          centerTitle: true,
          leading: InkWell(
              onTap: () {
                Navigator.push(
                    context, (MaterialPageRoute(builder: (context) => busy())));
              },
              child: const Icon(Icons.arrow_back)),
          backgroundColor: Colors.blue.shade900,
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: [
              const Tab(text: 'Company Formation'),
              const Tab(text: 'Licensing'),
              const Tab(text: 'Enforcement'),
              const Tab(text: 'SECP Offices'),
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
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Company Formation Description',
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
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                margin:
                                    const EdgeInsets.only(left: 20, right: 20),
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: 'Select',
                                    isExpanded: true,
                                    items: const [
                                      DropdownMenuItem(
                                        value: 'Select',
                                        child: Text('Select'),
                                      ),
                                      DropdownMenuItem(
                                        value: '1',
                                        child: Text('Registeration of Company'),
                                      ),
                                      DropdownMenuItem(
                                        value: '2',
                                        child: Text('Running of company'),
                                      ),
                                      DropdownMenuItem(
                                        value: '2',
                                        child: Text('Closing of Company'),
                                      ),
                                    ],
                                    onChanged: (String? value) {},
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: SizedBox(
                                height: 50,
                                width: 80,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue
                                        .shade900, // Set the background color
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const companyformation()));
                                    // Navigate to the main screen or desired destination
                                  },
                                  child: const Text('Check'),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 10),
                              child: Row(
                                children: const [
                                  Text(
                                    'Procedure',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "One example of a loan is a car loan. This is a closed-end loan,",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade600),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0, left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "of scheme programs to its citizens.",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade600),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Row(
                                children: const [
                                  Text(
                                    'How to Apply',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "One example of a loan is a car loan. This is a closed-end loan,",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade600),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0, left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "of scheme programs to its citizens.",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade600),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Row(
                                children: const [
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "One example of a loan is a car loan. This is a closed-end loan,",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade600),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0, left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "of scheme programs to its citizens.",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade600),
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
                                    width: 300,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          new BoxShadow(
                                            color: Colors.grey.shade300,
                                            offset: new Offset(
                                              10.10,
                                              10.10,
                                            ),
                                          )
                                        ]),
                                    child: const Center(
                                      child: Text(
                                        'Video Section',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
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
                                    height: 50,
                                    width: 340,
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade900,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: const Center(
                                      child: Text(
                                        'Hire Assistant',
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
                            Container(
                              height: 100,
                              width: 100,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Licensing',
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
                  DataTable(
                    columns: [
                      const DataColumn(label: Text('No')),
                      const DataColumn(label: Text('Capital Markets')),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          const DataCell(Text('1')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Securities and futures adviser',
                              ),
                              onTap: () => launch(
                                  'https://www.secp.gov.pk/licensing/capital-markets/securities-advisors-and-futures-advisor/'),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('2')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Stock exchanges',
                              ),
                              onTap: () => launch(
                                  'https://www.secp.gov.pk/licensing/capital-markets/stock-exchange/'),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('3')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Commodity Exchanges',
                              ),
                              onTap: () => launch(
                                  'https://www.secp.gov.pk/licensing/capital-markets/commodity-exchanges/'),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('4')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Depository Companies',
                              ),
                              onTap: () => launch(
                                  'https://www.secp.gov.pk/licensing/capital-markets/depository-companies/'),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('5')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Clearing Houses',
                              ),
                              onTap: () => launch(
                                  'https://www.secp.gov.pk/licensing/capital-markets/clearing-houses/'),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('6')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Securities Brokers',
                              ),
                              onTap: () => launch(
                                  'https://www.secp.gov.pk/licensing/capital-markets/agents-and-brokers/'),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('7')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Debt Securities Trustee',
                              ),
                              onTap: () => launch(
                                  'https://www.secp.gov.pk/licensing/capital-markets/debt-securities-trusties-dst/'),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('8')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Share Registrar and Balloters',
                              ),
                              onTap: () => launch(
                                  'https://www.secp.gov.pk/licensing/capital-markets/balloter-and-transfer-agent/'),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('9')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Underwriters / Consultant / Banker to the issue',
                              ),
                              onTap: () => launch(
                                  'https://www.secp.gov.pk/licensing/capital-markets/underwriters/'),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('10')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Credit Rating Companies',
                              ),
                              onTap: () => launch(
                                  'https://www.secp.gov.pk/licensing/capital-markets/credit-rating-agencies/'),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('11')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Special Purpose Vehicles',
                              ),
                              onTap: () => launch(
                                  'https://www.secp.gov.pk/licensing/capital-markets/special-purpose-vehicles/'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    child: DataTable(
                      columns: [
                        const DataColumn(label: Text('No')),
                        const DataColumn(label: Text('NBFCs')),
                      ],
                      rows: [
                        DataRow(
                          cells: [
                            const DataCell(Text('1')),
                            DataCell(
                              GestureDetector(
                                child: const Text(
                                  'Voluntary Pension Funds',
                                  style: TextStyle(color: Color(0xFF00044a)),
                                ),
                                onTap: () => launch(
                                    "https://www.secp.gov.pk/licensing/nbfcs/voluntary-pension-funds/"),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            const DataCell(Text('2')),
                            DataCell(
                              GestureDetector(
                                child: const Text(
                                  'Modarabas',
                                  style: TextStyle(color: Color(0xFF00044a)),
                                ),
                                onTap: () => launch(
                                    "https://www.secp.gov.pk/licensing/nbfcs/modarabas/"),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            const DataCell(Text('3')),
                            DataCell(
                              GestureDetector(
                                child: const Text(
                                  'REIT Management Services',
                                  style: TextStyle(color: Color(0xFF00044a)),
                                ),
                                onTap: () => launch(
                                    "https://www.secp.gov.pk/licensing/nbfcs/reit-management-services/"),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            const DataCell(Text('4')),
                            DataCell(
                              GestureDetector(
                                child: const Text(
                                  'PE and VC Fund Management Services',
                                  style: TextStyle(color: Color(0xFF00044a)),
                                ),
                                onTap: () => launch(
                                    "https://www.secp.gov.pk/licensing/nbfcs/pe-and-vc-fund-management-services/"),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            const DataCell(Text('5')),
                            DataCell(
                              GestureDetector(
                                child: const Text(
                                  'Asset Management Services',
                                  style: TextStyle(color: Color(0xFF00044a)),
                                ),
                                onTap: () => launch(
                                    "https://www.secp.gov.pk/licensing/nbfcs/asset-management-services/"),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            const DataCell(Text('6')),
                            DataCell(
                              GestureDetector(
                                child: const Text(
                                  'Investment Advisory Services',
                                  style: TextStyle(color: Color(0xFF00044a)),
                                ),
                                onTap: () => launch(
                                    "https://www.secp.gov.pk/licensing/nbfcs/investment-advisory-services/"),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            const DataCell(Text('7')),
                            DataCell(
                              GestureDetector(
                                child: const Text(
                                  'Leasing (License to Undertake leasing Business)',
                                  style: TextStyle(color: Color(0xFF00044a)),
                                ),
                                onTap: () => launch(
                                    "https://www.secp.gov.pk/licensing/nbfcs/leasing-license-to-undertake-leasing-business/"),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            const DataCell(Text('8')),
                            DataCell(
                              GestureDetector(
                                child: const Text(
                                  'Housing Finance Services',
                                  style: TextStyle(color: Color(0xFF00044a)),
                                ),
                                onTap: () => launch(
                                    "https://www.secp.gov.pk/licensing/nbfcs/housing-finance-services/"),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            const DataCell(Text('9')),
                            DataCell(
                              GestureDetector(
                                child: const Text(
                                  'Investment Finance Services',
                                  style: TextStyle(color: Color(0xFF00044a)),
                                ),
                                onTap: () => launch(
                                    "https://www.secp.gov.pk/licensing/nbfcs/investment-finance-services/"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: DataTable(
                      columns: [
                        const DataColumn(label: Text('No')),
                        const DataColumn(label: Text('Insurance Sector')),
                      ],
                      rows: [
                        DataRow(
                          cells: [
                            const DataCell(Text('1')),
                            DataCell(
                              GestureDetector(
                                child: const Text(
                                  'Insurance Companies',
                                  style: TextStyle(color: Color(0xFF00044a)),
                                ),
                                onTap: () => launch(
                                    "https://www.secp.gov.pk/licensing/insurance-companies-licensing/insurance-companies/"),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            const DataCell(Text('2')),
                            DataCell(
                              GestureDetector(
                                child: const Text(
                                  'Authorized Surveying Officer',
                                  style: TextStyle(color: Color(0xFF00044a)),
                                ),
                                onTap: () => launch(
                                    "https://www.secp.gov.pk/licensing/insurance-companies-licensing/authorized-surveying-officer/"),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            const DataCell(Text('3')),
                            DataCell(
                              GestureDetector(
                                child: const Text(
                                  'Insurance Brokers',
                                  style: TextStyle(color: Color(0xFF00044a)),
                                ),
                                onTap: () => launch(
                                    "https://www.secp.gov.pk/licensing/insurance-companies-licensing/insurance-brokers/"),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            const DataCell(Text('4')),
                            DataCell(
                              GestureDetector(
                                child: const Text(
                                  'Insurance Surveyors',
                                  style: TextStyle(color: Color(0xFF00044a)),
                                ),
                                onTap: () => launch(
                                    "https://www.secp.gov.pk/licensing/insurance-companies-licensing/third-party-administrator/"),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            const DataCell(Text('5')),
                            DataCell(
                              GestureDetector(
                                child: const Text(
                                  'Third Party Administrator',
                                  style: TextStyle(color: Color(0xFF00044a)),
                                ),
                                onTap: () => launch(
                                    "https://www.secp.gov.pk/licensing/insurance-companies-licensing/third-party-administrator/"),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            const DataCell(Text('6')),
                            DataCell(
                              GestureDetector(
                                child: const Text(
                                  'Window Takaful Operators',
                                  style: TextStyle(color: Color(0xFF00044a)),
                                ),
                                onTap: () => launch(
                                    "https://www.secp.gov.pk/licensing/insurance-companies-licensing/window-takaful-operators/"),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            const DataCell(Text('7')),
                            DataCell(
                              GestureDetector(
                                child: const Text(
                                  'Guide Book for Licensing of Insurance Companies',
                                  style: TextStyle(color: Color(0xFF00044a)),
                                ),
                                onTap: () => launch(
                                    "https://www.secp.gov.pk/licensing/insurance-companies-licensing/guide-book-for-licensing-of-insurance-companies/"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Enforcement',
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
                  DataTable(
                    columns: [
                      const DataColumn(label: Text('No')),
                      const DataColumn(label: Text(' Orders Issued Under')),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          const DataCell(Text('1')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                ' Orders Issued Under Takaful Rules',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/takaful-rules-2012/"),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('2')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Orders Issued Under Anti-Money Laundering Act, 2010',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/orders-issued-under-anti-money-laundering-act-2010/"),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('3')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Orders Issued Under Companies Act 2017',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/orders-issued-under-companies-act-2017/"),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('4')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                ' Orders Issued Under Future Market Act, 2016',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/orders-issued-under-futures-market-act-2016/"),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('5')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                ' Orders Issued Under Brokers and Agents Rules, 2001',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/brokers-and-agents-rules-2001/"),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('6')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Orders Issued Under Central Depository Act, 1997',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/central-depository-act-1997/"),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('7')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Orders Issued Under Commodity Exchange and Future Contract Rules',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/commodity-exchange-and-future-contracts-rules/"),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('8')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Orders Issued Under Companies (Amendments) Ordinance, 2002',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/companies-amendments-ordinance-2002/"),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('9')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Orders Issued Under Companies (Audit of Cost Accounts) Rules, 1998',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/companies-audit-of-cost-accounts-rules-1998/"),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('10')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                ' Orders Issued Under Companies (General Provisions &amp; Forms) Rules, 1985',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/companies-general-provisions-forms-rules-1985/"),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('11')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Orders Issued Under Companies Ordinance 1984',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/companies-ordinance-1984/"),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('12')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Orders Issued Under Companies  Rules, 1996',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/companies-rules-1996/"),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('13')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Debt Securities Trustee Regulations, 2012',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/debt-securities-trustee-regulations-2012/"),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('14')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Orders Issued Under Insurance Ordinance 2000',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/insurance-ordinance-2000/"),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('15')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Orders Issued Under Modaraba (Floatation and Control) Ordinance, 1980',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/modaraba-floatation-and-control-ordinance-1980/"),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('16')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Orders Issued Under Companies Ordinance 1984',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/companies-ordinance-1984/"),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('17')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Orders Issued Under NBFC Rules, 2003',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/nbfc-rules-2003/"),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('18')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Orders Issued Under SECP Act 1997',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/secp-act-1997/"),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('19')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Orders Issued Under Securities Act 2015',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/securities-act-2015/"),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('20')),
                          DataCell(
                            InkWell(
                              child: const Text(
                                'Orders Issued Under Securities Ordinance 1969',
                              ),
                              onTap: () => launch(
                                  "https://www.secp.gov.pk/enforcement/orders/securities-ordinance-1969/"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Secp Offices',
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
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: 'Select City',
                          isExpanded: true,
                          items: const [
                            DropdownMenuItem(
                              value: 'Select City',
                              child: Text('Select City'),
                            ),
                            DropdownMenuItem(
                              value: '1',
                              child: Text('Faisalabad'),
                            ),
                            DropdownMenuItem(
                              value: '2',
                              child: Text('Lahore'),
                            ),
                            DropdownMenuItem(
                              value: '2',
                              child: Text('Rawalpindi'),
                            ),
                          ],
                          onChanged: (String? value) {},
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Faisalabad',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: const Icon(Icons.location_on),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 8.0),
                                          child: const Text('Address: xyz'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: const Icon(Icons.phone),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 8.0),
                                          child: const Text(
                                              'Contact: (041) - 123456- 789'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: const Icon(Icons.email),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 8.0),
                                          child: const Text(
                                              'Email: xyz@gmail.com'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(16.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Faisalabad',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: const Icon(Icons.location_on),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 8.0),
                                          child: const Text('Address: xyz'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: const Icon(Icons.phone),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 8.0),
                                          child: const Text(
                                              'Contact: (041) - 123456- 789'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: const Icon(Icons.email),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 8.0),
                                          child: const Text(
                                              'Email: xyz@gmail.com'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(16.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Faisalabad',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.location_on),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 8.0),
                                          child: const Text('Address: xyz'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: const Icon(Icons.phone),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 8.0),
                                          child: const Text(
                                              'Contact: (041) - 123456- 789'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: const Icon(Icons.email),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 8.0),
                                          child: const Text(
                                              'Email: xyz@gmail.com'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(16.0),
                        ),
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
