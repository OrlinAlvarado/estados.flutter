import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/bloc/usuario/usuario_cubit.dart';
import 'package:estados/models/usuario.dart';

class Pagina2Page extends StatelessWidget {

@override
  Widget build(BuildContext context) {
   final usuarioCubit = context.bloc<UsuarioCubit>();
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
                final newUser = new Usuario(
                  nombre: 'Orlin Alvarado',
                  edad: 34, 
                  profesiones: [
                    'FullStack Developer',
                    'Database manager'
                  ]
                );
                
               usuarioCubit.selecccionarUsuario(newUser);
              }
            ),
            MaterialButton(
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                usuarioCubit.cambiarEdad(30);
              }
            ),
            MaterialButton(
              child: Text('Añadir profesiones', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                usuarioCubit.agregarProfesion();
              }
            ),
          ],
        )
      ),
    );
  }
}