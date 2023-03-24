import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CDrawerHeader extends StatefulWidget {
  const CDrawerHeader({super.key});

  @override
  State<CDrawerHeader> createState() => _CDrawerHeaderState();
}

class _CDrawerHeaderState extends State<CDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 172, 65, 65),
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(  top:20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape:BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/a.png')
              )
            ),
          ),
          Text("Hi Cecil !",style: TextStyle(color: Colors.white),),
           Text("cecil@gmail.com",style: TextStyle(color: Colors.white),)
        ],

      ),
    );
  }
}


