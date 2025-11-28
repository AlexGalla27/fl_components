import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context) {
    print('Hola que tal');
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return AlertDialog(
          title: Text('Alerta un gay'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Aqui va el contenido de la alerta'),
              SizedBox( height: 20 ),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: Text('Cerrar')
              )
          ],
        );
      }
      );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Texto de alerta', style: TextStyle(fontSize: 20),),
          ),
          onPressed: () => displayDialog(context),
          )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_rounded),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}