import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../providers/oxygen_provider.dart';

import 'package:covid_relief_app/components/block.dart';

class OxygenListScreen extends StatefulWidget {
  static const routeName = 'oxygen-list-screen';
  @override
  _OxygenListScreenState createState() => _OxygenListScreenState();
}

class _OxygenListScreenState extends State<OxygenListScreen> {
  void _makingPhoneCall() async {
    const url = 'tel:9876543210';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final oxygenProviderList =
        Provider.of<OxygenProvider>(context).oxygenProviderList;

    return Scaffold(
      backgroundColor: Color(0xfff7f7ff),
      appBar: AppBar(
        backgroundColor: Color(0xff6d9dc5),
        title: const Text('Oxygen Suppliers'),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (ctx, index) => Block(
            blockChild: ListTile(
              onTap: () {},
              title: Column(
                children: [
                  SizedBox(height: 25.0),
                  Center(
                    child: Text(
                      '${oxygenProviderList[index].location}',
                      style: TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.w800,
                        color: Color(0xfff15025),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 0, 0, 0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '${oxygenProviderList[index].description}',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20.0,
                              height: 1.3,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Contact',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                '${oxygenProviderList[index].provider}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text('${oxygenProviderList[index].contact}'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 30.0,
                    color: Colors.black,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Text(
                              'Reported ${oxygenProviderList[index].duration.toString().substring(0, 2)} hrs ago',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xff36413e),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'No. of cylinders available: ${oxygenProviderList[index].numOfCylinders}',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: OutlinedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFF003049)),
                          ),
                          onPressed: () => launch(
                              "tel:${oxygenProviderList[index].contact}"),
                          child: Text(
                            'Call!',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

            ),
            backgroundColor:
                MaterialStateProperty.all(CardTheme.of(context).color),
          ),
        ),
        itemCount: oxygenProviderList.length,
      ),
    );
  }
}
