import 'package:flutter/material.dart';
import 'package:untitled/widgets/custom_text.dart';
class NotiBody extends StatelessWidget {
  String text;
  double? fontsize;
   NotiBody({Key? key,required this.text,this.fontsize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Icon(Icons.info_outline,color: Colors.greenAccent,size: 16,),
          SizedBox(width: 20,),
          CustomText(text: text,fontsize: fontsize,),
          
        ],
        
        
      )
      
      
      
    );
  }
}
