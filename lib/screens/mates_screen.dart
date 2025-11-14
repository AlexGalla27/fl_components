import 'package:flutter/material.dart';

class MatesScreen extends StatelessWidget {
   
  const MatesScreen({Key? key}) : super(key: key);

  get MenuOptions => null;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola'),
      ),
      body: Center(
         child: Text('HOla que tal'),
      ),
    );
  }
}