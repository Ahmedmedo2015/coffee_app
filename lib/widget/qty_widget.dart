import 'package:flutter/material.dart';

class QtyWidget extends StatefulWidget {
  const QtyWidget({super.key});

  @override
  State<QtyWidget> createState() => _QtyWidgetState();
}

class _QtyWidgetState extends State<QtyWidget> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
         GestureDetector(
          onTap: () {
            setState(() {
              if (number>1) {
               number --;  
              }
            });
          },
           child: Text(
            "-",
           style: TextStyle(fontSize: 40,fontWeight: FontWeight.w400),),
         ),
         Text(
          number.toString(),
           style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
         GestureDetector(
          onTap: () {
            setState(() {
              number ++;
            });
          },
           child: Text(
            "+",
             style: TextStyle(
              fontSize: 25,fontWeight: FontWeight.w400,
              ),
              ),
         ),
          ],
        ),
        ),
    );
  }
}