import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
//        Icon(
//          Icons.all_inclusive,
//          color: Colors.deepPurpleAccent,
//          size: 25,
//        ),
      SizedBox(width: MediaQuery.of(context).size.width/6,),
        Text(
          'New Arrival',
          style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
