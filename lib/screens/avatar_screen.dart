import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatares'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              child: Text('AG'),
              backgroundColor: Colors.green,
            ),
          )
        ],
        ),
      body: Center(
         child: CircleAvatar(
          backgroundImage: NetworkImage('https://c0.klipartz.com/pngpicture/14/608/gratis-png-spider-man-logo-superhero-spiderman-face-thumbnail.png'),
          maxRadius: 120,
         ),
      ),
    );
  }
}