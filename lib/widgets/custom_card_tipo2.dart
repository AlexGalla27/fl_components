import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget{

  final String imagenUrl;
  final String? nombre;

  const CustomCardTipo2({super.key, required this.imagenUrl, this.nombre});
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      elevation: 30,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imagenUrl),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          if(nombre != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 20),
            child: Text( nombre ?? 'Desconocido' )
            ),
        ],
      ),
    );
  }
}