import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/models/usuario.dart';

import 'package:estados/bloc/usuario/usuario_bloc.dart';

class Pagina2Page extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    
   // ignore: close_sinks
   final usuarioBloc = BlocProvider.of<UsuarioBloc>(context);
   return Scaffold(
      appBar: AppBar(
           title: Text('Pagina2', textAlign: TextAlign.center,)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('Establecer usuario', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                final newUser = Usuario(
                  nombre: 'Orlin Alvarado',
                  edad: 34,
                  profesiones: ['Desarrollador']
                );
                usuarioBloc.add( ActivarUsuario(newUser) );
              }
            ),
            MaterialButton(
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                usuarioBloc.add( CambiarEdad(45) );
              }
            ),
            MaterialButton(
              child: Text('Añadir profesiones', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                usuarioBloc.add( AgregarProfesion('Profesion') );
              }
            ),
          ],
        )
      ),
    );
  }
}