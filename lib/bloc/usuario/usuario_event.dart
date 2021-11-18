part of 'usuario_bloc.dart';



@immutable
abstract class UsuarioEvent{

}

class ActivarUsuario extends UsuarioEvent{
  final Usuario usu;
  ActivarUsuario(this.usu);
}

class CambiarEdad extends UsuarioEvent{
  final int edad;
  CambiarEdad(this.edad);
}

class NuevaProfesion extends UsuarioEvent{
  final String profesion;
  NuevaProfesion(this.profesion);
}

class BorrarUsuario extends UsuarioEvent{
  
}