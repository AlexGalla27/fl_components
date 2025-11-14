import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         title: Text("Card Widget"),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric( horizontal: 20, vertical: 10),
          children: [
            CustomCardTipo1(),
            SizedBox(height: 20,),
            CustomCardTipo2(imagenUrl: 'https://www.spain.info/export/sites/segtur/.content/imagenes/cabeceras-grandes/andalucia/trekking-sierra-nevada-c-turismo-granada.jpg',),
            SizedBox(height: 20,),
            CustomCardTipo2(nombre: 'Virgen de las nieves', imagenUrl: 'https://sierranevadagranada.com/images/sierra-nevada-114-126586.jpg',),
            SizedBox(height: 20,),
            CustomCardTipo2(nombre: 'Paisaje', imagenUrl: 'https://media-cdn.tripadvisor.com/media/photo-c/1280x250/12/f4/e1/46/in-the-sierra-nevada.jpg'),
            
          ],
        ),
      ),
    );
  }
}
