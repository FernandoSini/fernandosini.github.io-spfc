import 'package:flutter/material.dart';
import 'package:spfc/web/widgets/FooterTextWidget.dart';

class Footer extends StatefulWidget {
  Footer({this.footerTextWidget, this.color, this.width, this.height});
  FooterTextWidget? footerTextWidget;
  double? height = 0;
  double? width = 0;
  Color? color;
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.height,
        width: widget.width,
        color: widget.color,
        alignment: Alignment.topCenter,
        child: widget.footerTextWidget);
  }
}
