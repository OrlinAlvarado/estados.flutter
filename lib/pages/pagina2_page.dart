import 'dart:ui';

import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina2Page extends StatelessWidget {

@override
  Widget build(BuildContext context) {
  final usuarioService = Provider.of<UsuarioService>(context);
   return Scaffold(
      appBar: AppBar(
           title: usuarioService.existeUsuario
            ? Text(usuarioService.usuario.nombre, textAlign: TextAlign.center,)
            : Text('Pagina2', textAlign: TextAlign.center,)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('Establecer usuario', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                final newUser = new Usuario(
                  nombre: 'Orlin Alvarado', 
                  edad: 34,
                  profesiones: [
                    'FullStack Delveloper',
                    'Video Jugador experto'
                  ] 
                  );
                
                usuarioService.usuario = newUser;
              }
            ),
            MaterialButton(
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                usuarioService.cambiarEdad(40);
              }
            ),
            MaterialButton(
              child: Text('Añadir profesiones', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                usuarioService.agregarProfesion();
              }
            ),
          ],
        )
      ),
    );
  }
}