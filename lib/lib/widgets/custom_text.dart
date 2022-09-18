
import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  String text; double? fontsize; FontWeight? fontw;
  Color ?color; TextOverflow ?over;
   CustomText({Key? key,required this.text,this.color=Colors.black,this.fontsize=14,this.fontw=FontWeight.w300,this.over=TextOverflow.visible}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,style: TextStyle(
        fontSize: fontsize,
        fontWeight: fontw,
        color: color,
        overflow: over,
      ),
      ),

    );
  }
}
