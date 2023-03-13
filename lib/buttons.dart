
import 'package:flutter/material.dart';


Padding selectionButton({required String heading1, required String heading2, required Color shade, required BuildContext context, required Function onClickAction}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
    child: GestureDetector(
      onTap: (){
        onClickAction();
      },
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(18)),
            color: shade,
          ),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 4,8,8),
                  child: Text(
                    heading1,
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 4,8,8),
                  child: Text(
                    heading2,
                    style: TextStyle(fontSize: 14),
                  ),
                )
              ],
            ),
          )),
    ),
  );
}


