import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../providers/redmisivir_provider.dart';

import 'package:covid_relief_app/components/block.dart';

class MedListScreen extends StatefulWidget {
  static const routeName = 'med-list-screen';
  @override
  _MedListScreenState createState() => _MedListScreenState();
}

class _MedListScreenState extends State<MedListScreen> {
  @override
  Widget build(BuildContext context) {
    final medicineProviderList =
        Provider.of<MedicineProvider>(context).medicineProviderList;
    print(medicineProviderList);

    return Scaffold(
      backgroundColor: Color(0xfff7f7ff),
      appBar: AppBar(
        backgroundColor: Color(0xff246a73),
        title: const Text('Medicine Suppliers'),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (ctx, index) => Block(
            blockChild: ListTile(
              onTap: () {},
              title: Column(
                children: [
                  SizedBox(height: 15.0),
                  Center(
                    child: Text(
                      '${medicineProviderList[index].location}',
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
                          child: Column(
                            children: [
                              Text(
                                '${medicineProviderList[index].hospitalName}',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  height: 1.3,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'Meds available:',
                                style: TextStyle(
                                  color: Color(0xffff9f1c),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              for (int i = 0;
                                  i < medicineProviderList[index].meds!.length;
                                  i++)
                                Text(
                                  '${medicineProviderList[index].meds![i]}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                            ],
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
                              Container(
                                padding: const EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xff1c5d99),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 3.0),
                                    Text(
                                      '${medicineProviderList[index].contact}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
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
                  Divider(
                    height: 30.0,
                    color: Colors.black,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Text(
                              'Reported ${medicineProviderList[index].duration.toString().substring(0, 2)} hrs ago',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xff36413e),
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
                              "tel:${medicineProviderList[index].contact}"),
                          child: Text(
                            'Call',
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
          ),
          itemCount: medicineProviderList.length,
        ),
      ),
    );
  }
}
