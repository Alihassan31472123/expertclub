import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class secpl extends StatefulWidget {
  const secpl({super.key});

  @override
  State<secpl> createState() => _secplState();
}

class _secplState extends State<secpl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
            Container(
      child: Table(
        border: TableBorder.all(),
        columnWidths: {
          0: FlexColumnWidth(),
          1: FlexColumnWidth(),
        },
        children: [
          TableRow(
            children: [
              TableCell(child: Text('No')),
              TableCell(child: Text('Capital Markets')),
            ],
          ),
          TableRow(
            children: [
              TableCell(child: Text('1')),
              TableCell(
                child: InkWell(
                  child: Text(
                    'Securities and futures adviser',
                    style: TextStyle(color: Color(0xFF00044A)),
                  ),
                  onTap: () =>
                      launch('https://www.secp.gov.pk/licensing/capital-markets/securities-advisors-and-futures-advisor/'),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(child: Text('2')),
              TableCell(
                child: InkWell(
                  child: Text(
                    'Stock exchanges',
                    style: TextStyle(color: Color(0xFF00044A)),
                  ),
                  onTap: () =>
                      launch('https://www.secp.gov.pk/licensing/capital-markets/stock-exchange/'),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(child: Text('3')),
              TableCell(
                child: InkWell(
                  child: Text(
                    'Commodity Exchanges',
                    style: TextStyle(color: Color(0xFF00044A)),
                  ),
                  onTap: () =>
                      launch('https://www.secp.gov.pk/licensing/capital-markets/commodity-exchanges/'),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(child: Text('4')),
              TableCell(
                child: InkWell(
                  child: Text(
                    'Depository Companies',
                    style: TextStyle(color: Color(0xFF00044A)),
                  ),
                  onTap: () =>
                      launch('https://www.secp.gov.pk/licensing/capital-markets/depository-companies/'),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(child: Text('5')),
              TableCell(
                child: InkWell(
                  child: Text(
                    'Clearing Houses',
                    style: TextStyle(color: Color(0xFF00044A)),
                  ),
                  onTap: () =>
                      launch('https://www.secp.gov.pk/licensing/capital-markets/clearing-houses/'),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(child: Text('6')),
              TableCell(
                child: InkWell(
                  child: Text(
                    'Securities Brokers',
                    style: TextStyle(color: Color(0xFF00044A)),
                  ),
                  onTap: () =>
                      launch('https://www.secp.gov.pk/licensing/capital-markets/agents-and-brokers/'),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(child: Text('7')),
              TableCell(
                child: InkWell(
                  child: Text(
                    'Debt Securities Trustee',
                    style: TextStyle(color: Color(0xFF00044A)),
                  ),
                  onTap: () =>
                      launch('https://www.secp.gov.pk/licensing/capital-markets/debt-securities-trusties-dst/'),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(child: Text('8')),
              TableCell(
                child: InkWell(
                  child: Text(
                    'Share Registrar and Balloters',
                    style: TextStyle(color: Color(0xFF00044A)),
                  ),
                  onTap: () =>
                      launch('https://www.secp.gov.pk/licensing/capital-markets/balloter-and-transfer-agent/'),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(child: Text('9')),
              TableCell(
                child: InkWell(
                  child: Text(
                    'Underwriters / Consultant / Banker to the issue',
                    style: TextStyle(color: Color(0xFF00044A)),
                  ),
                  onTap: () =>
                      launch('https://www.secp.gov.pk/licensing/capital-markets/underwriters/'),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(child: Text('10')),
              TableCell(
                child: InkWell(
                  child: Text(
                    'Credit Rating Companies',
                    style: TextStyle(color: Color(0xFF00044A)),
                  ),
                  onTap: () =>
                      launch('https://www.secp.gov.pk/licensing/capital-markets/credit-rating-agencies/'),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(child: Text('11')),
              TableCell(
                child: InkWell(
                  child: Text(
                    'Special Purpose Vehicles',
                    style: TextStyle(color: Color(0xFF00044A)),
                  ),
                  onTap: () =>
                      launch('https://www.secp.gov.pk/licensing/capital-markets/special-purpose-vehicles/'),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
        ],
      ),
    );
  }
}