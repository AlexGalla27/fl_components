import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class CienciasScreen extends StatelessWidget {
  
  const CienciasScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ciencias'),
        elevation: 50,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(AppRoutes.LibrosCole[index].icon),
          title: Text(AppRoutes.LibrosCole[index].name),
          onTap: () {
            //final route = MaterialPageRoute(builder: (context) => Listview1Screen(),);
            //Navigator.pushReplacement(context, route);
            Navigator.pushNamed(context, AppRoutes.LibrosCole[index].route);
          },
        ), 
        separatorBuilder: (context, index) => Divider(), 
        itemCount: AppRoutes.LibrosCole.length
      )
    );
  }
}