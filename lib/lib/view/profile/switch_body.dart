import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets/custom_text.dart';
class SwitchBody extends StatefulWidget {
  String text;
  double? fontsize;

  SwitchBody({Key? key,required this.text,this.fontsize}) : super(key: key);

  @override
  State<SwitchBody> createState() => _SwitchBodyState();
}

class _SwitchBodyState extends State<SwitchBody> {
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(text: widget.text,fontsize: widget.fontsize,),
            //SizedBox(width: 20,),
      Padding(
        padding: EdgeInsets.only( right: 10),
        child: Switch(
          value: val,
          onChanged: (value) {
            setState(() {
              val = value;
            });
          },
          activeColor: Colors.green,
        ),
      ),
          ],
        )
    );
  }
}
