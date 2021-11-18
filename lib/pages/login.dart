import 'package:ciren/bloc/usuario/usuario_bloc.dart';
import 'package:ciren/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        actions: [
          IconButton(onPressed: (){
            BlocProvider.of<UsuarioBloc>(context).add(BorrarUsuario());
          }, 
          icon: Icon(Icons.delete))
        ],
      ),
      body: BlocBuilder<UsuarioBloc, UsuarioState>(
        builder: ( _ , state){
          if (state.existeUsuario) {
            return InformacionUsuario(state.usuario);
          }else{
            return Center(
              child: Text('No hay info'),
            );
          }
        } 
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'home'),
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  //const InformacionUsuario({Key? key}) : super(key: key);
  final Usuario? usuario;
  const InformacionUsuario(this.usuario);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('General', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          
          Divider(),
          ListTile(title: Text('Nombre: ${usuario!.nombre}')),
          ListTile(title: Text('Edad: ${usuario!.edad}')),
          
          Divider(),
          ...usuario!.profesiones.map(
            (profesion) => ListTile(title: Text(profesion)),
            ).toList()
          


        ],
      ),
    );
  }
}