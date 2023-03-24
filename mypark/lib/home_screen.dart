import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
        children:[ 
          Text('Home page',style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Color.fromARGB(255, 168, 9, 9)))
        ]
    );
    
  }
}