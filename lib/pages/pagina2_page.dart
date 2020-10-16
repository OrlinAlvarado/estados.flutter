import 'dart:ui';

import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {

@override
  Widget build(BuildContext context) {
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
                
              }
            ),
            MaterialButton(
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                
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