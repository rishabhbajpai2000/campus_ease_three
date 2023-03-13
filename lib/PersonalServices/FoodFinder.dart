import 'package:campus_ease/PersonalServices/FoodFinderData.dart';
import 'package:flutter/material.dart';

class FoodFinder extends StatefulWidget {
  const FoodFinder({Key? key}) : super(key: key);

  @override
  State<FoodFinder> createState() => _FoodFinderState();
}

class _FoodFinderState extends State<FoodFinder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffFF4B4B),
        title: Center(
            child: Text(
          "Food Finder",
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
                    itemCount: restaurantData.length,
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
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                  child: Text(
                                    restaurantData[index].name,
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
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 5,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [Text("Menu",style: TextStyle(fontWeight: FontWeight.w500),), Text(restaurantData[index].menu)],
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
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 5,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [Text("Price Range ",style: TextStyle(fontWeight: FontWeight.w500),), Text(restaurantData[index].priceRange)],
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
                                        color: Colors.red,
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
                                          Text(restaurantData[index].contactNumber)
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
                                        color: Colors.red,
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
                                              restaurantData[index].review50words)
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
