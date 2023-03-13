import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../buttons.dart';
import 'BrokerConnect.dart';
import 'CabShare.dart';
import 'FoodFinder.dart';
import 'RentRight.dart';

class PersonalScreenBody extends StatefulWidget {
  const PersonalScreenBody({
    super.key,
  });

  @override
  State<PersonalScreenBody> createState() => _PersonalScreenBodyState();
}

class _PersonalScreenBodyState extends State<PersonalScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // we are there to help you
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              "Hi there! ",
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.left,
            ),
          ),

          // text below the help you
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              "Here some of the ways you can find help to grow in your studies",
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.left,
            ),
          ),

          // button 1 personal
          selectionButton(heading1: "Food Finder", heading2: "Find the best food near by!", shade: Color(0xffF7D972), context: context,
              onClickAction: () => {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FoodFinder()))
              }),
          selectionButton(heading1: "Rent Right", heading2: "Find affordable PG’s , Flats and hostels nearby", shade: Color(0xffF7D972),context: context,
              onClickAction: () => {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RentRight()))
              } ),
          selectionButton(heading1: "Broker Connect", heading2: "Direct and hassle free contact to Brokers ", shade: Color(0xffF7D972), context: context,
              onClickAction: () => {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BrokerConnect()))
              }),
          selectionButton(heading1: "Cab Share", heading2: "Share cabs and split the bills.", shade: Color(0xffF7D972), context: context,
              onClickAction: () => {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CabShare()))
              }),
        ],
      ),
    );
  }
}

