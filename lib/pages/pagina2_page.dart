import 'dart:ui';

import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service.dart';
import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {

@override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
           title: StreamBuilder(
             stream: usuarioService.usuarioStream ,
             builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot){
               return snapshot.hasData 
               ? Text('Nombre: ${ snapshot.data.nombre }', textAlign: TextAlign.center)
               : Text('Pagina2', textAlign: TextAlign.center);
             },
           ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('Establecer usuario', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                final nuevoUsuario = new Usuario(
                  nombre: 'Orlin Alvarado',
                  edad: 32
                );
                usuarioService.cargarUsuario( nuevoUsuario );
              }
            ),
            MaterialButton(
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                usuarioService.cambiarEdad(30);
              }
            ),
            MaterialButton(
              child: Text('Añadir profesiones', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                
              }
            ),
          ],
        )
      ),
    );
  }
}