import 'package:flutter/material.dart';

class MatchWidget extends StatelessWidget {
  const MatchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
      child: Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Padding(padding: EdgeInsets.only(left: 5)),
            CircleAvatar(
              radius: 30,
              child: Icon(Icons.account_circle),
            ),
            Text("Player 1"),
            Icon(Icons.military_tech),
            Text("Player 2"),
            CircleAvatar(
              radius: 30,
              child: Icon(Icons.account_circle),
            ),
            Padding(padding: EdgeInsets.only(right: 5)),
          ],
        ),
      ),
    );
  }
}