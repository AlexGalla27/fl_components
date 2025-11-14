import 'package:flutter/material.dart';
import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/screens/screens.dart';


class CienciasScreen extends StatelessWidget {
   
  const CienciasScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Text('El libro de ciencias es de color verde'),

      ),
    );
  }
}