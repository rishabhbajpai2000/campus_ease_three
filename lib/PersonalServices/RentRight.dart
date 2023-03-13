import 'package:campus_ease/PersonalServices/RentRightData.dart';
import 'package:flutter/material.dart';

class RentRight extends StatefulWidget {
  const RentRight({Key? key}) : super(key: key);

  @override
  State<RentRight> createState() => _RentRightState();
}

class _RentRightState extends State<RentRight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffFEBE98),
        title: Center(
            child: Text(
              "Rent Right",
              style: TextStyle(color: Colors.black),
            )),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: <Widget>[
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: flatInfoData.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 500,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 44,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Color(0xffFEBE98),
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                  child: Text(
                                    flatInfoData[index].name,
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Details",style: TextStyle(fontWeight: FontWeight.w500),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              height: 37,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      decoration: new BoxDecoration(
                                        color: Color(0xffCCDEF6),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 5,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [Text("Location",style: TextStyle(fontWeight: FontWeight.w500),), Text(flatInfoData[index].location)],
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 37,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      decoration: new BoxDecoration(
                                        color: Color(0xffCCDEF6),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 5,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [Text("Rent per Month ",style: TextStyle(fontWeight: FontWeight.w500),), Text(flatInfoData[index].rentPerMonth)],
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 37,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      decoration: new BoxDecoration(
                                        color: Color(0xffCCDEF6),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 5,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Contact Number",style: TextStyle(fontWeight: FontWeight.w500),),
                                          Text(flatInfoData[index].contactNumber)
                                        ],
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(

                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 37,
                                      decoration: new BoxDecoration(
                                        color: Color(0xffCCDEF6),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 5,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Review",style: TextStyle(fontWeight: FontWeight.w500),),
                                          Text(
                                              flatInfoData[index].review50words)
                                        ],
                                      ))
                                ],
                              ),
                            )
                          ],
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

