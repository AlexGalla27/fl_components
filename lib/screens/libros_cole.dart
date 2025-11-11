import 'package:fl_components/models/menu_options.dart';
import 'package:fl_components/screens/mates.dart';
import 'package:fl_components/routes/app_routes.dart';
import 'package:flutter/material.dart';

class LibrosCole extends StatelessWidget {

  final options = const['Mates', 'Lengua', 'Ciencias' , 'Ingles'];
   
  const LibrosCole({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Libros'),
        //backgroundColor: Colors.pink
        
        ),
      
       body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(AppRoutes.MenuOptions[index].icon),
          title: Text(AppRoutes.MenuOptions[index].name),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () => Navigator.pushNamed(
            context,
            AppRoutes.MenuOptions[index].route,
          ),
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: AppRoutes.MenuOptions.length,
      ),
    );
  }
}