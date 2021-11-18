import 'package:ciren/bloc/usuario/usuario_bloc.dart';
import 'package:ciren/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final usuarioBloc = BlocProvider.of<UsuarioBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('Establecer Usuario', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {

                final nuevoUsuario = new Usuario(
                  nombre: 'Luis Leyton',
                  edad: 30,
                  profesiones: ['fullstack', 'constructor']
                );

                usuarioBloc.add(
                  ActivarUsuario(nuevoUsuario)
                );

              }
            ),
            MaterialButton(
              child: Text('Cambiar Edad', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () => {
                usuarioBloc.add(
                  CambiarEdad(40)
                )
              }
            ),
            MaterialButton(
              child: Text('Añadir Profesion', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () => {
                usuarioBloc.add(NuevaProfesion('Nueva Profesion')
                )
              }
            )
          
          ],
        ),
      ),
    );
  }
}