import 'package:flutter/material.dart';

class FooterTextWidget extends StatefulWidget {
  FooterTextWidget(this.text, this.size, this.color);
  String? text;
  double size= 0;
  Color color;

  @override
  _FooterTextWidgetState createState() => _FooterTextWidgetState();
}

class _FooterTextWidgetState extends State<FooterTextWidget> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return 
      Text(
        widget.text!,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: widget.color,
          fontSize: widget.size
        ),
      );
  
  }
}
