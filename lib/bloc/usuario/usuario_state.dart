part of 'usuario_bloc.dart';

class UsuarioState{

  final bool existeUsuario;
  final Usuario? usuario;

  UsuarioState({ Usuario? usu })
  : usuario = usu ?? null,
  existeUsuario = (usu != null) ? true : false;

   UsuarioState copyWith({Usuario? usuState}) => UsuarioState(
     usu:usuState ?? this.usuario 
    );

    UsuarioState estadoInicial() => new UsuarioState();
     


}