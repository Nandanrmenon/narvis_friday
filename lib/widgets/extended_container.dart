import 'package:flutter/material.dart';

class ExtendedContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onTap;

  const ExtendedContainer({Key key, this.title, this.subtitle, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: onTap ?? null,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                subtitle,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
