import 'package:campus_ease/PersonalServices/BrokerConnectData.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BrokerConnect extends StatefulWidget {
  const BrokerConnect({Key? key}) : super(key: key);

  @override
  State<BrokerConnect> createState() => _BrokerConnectState();
}

class _BrokerConnectState extends State<BrokerConnect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffC5F2E8),
        title: Center(
            child: Text(
          "Broker Connect",
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: <Widget>[
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: brokersData.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: double.infinity,
                          height: 64,
                          decoration: BoxDecoration(
                              color: Color(0xffC5F2E8),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 8, bottom: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          brokersData[index].name,
                                          style: TextStyle(fontSize: 16),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          brokersData[index].contactNumber,
                                          style: TextStyle(fontSize: 16),
                                          textAlign: TextAlign.left,
                                        )
                                      ],
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                      onTap: () async {
                                        final call =
                                            Uri.parse('tel:${brokersData[index].contactNumber}');
                                        if (await canLaunchUrl(call)) {
                                          launchUrl(call);
                                        } else {
                                          throw 'Could not launch $call';
                                        }
                                      },
                                      child: Icon(Icons.phone)))
                            ],
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
