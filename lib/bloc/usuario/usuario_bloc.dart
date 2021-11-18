import 'package:meta/meta.dart';
import 'package:ciren/models/usuario.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'usuario_state.dart';
part 'usuario_event.dart';


class UsuarioBloc extends Bloc<UsuarioEvent,UsuarioState>{
  UsuarioBloc() : super(UsuarioState());
  
 @override
Stream<UsuarioState> mapEventToState(UsuarioEvent event) async*{
   //print('Hola Ciren');

  if (event is ActivarUsuario) {
    yield state.copyWith(
      usuState: event.usu
    );
  }else if (event is CambiarEdad) {
    yield state.copyWith(
      usuState: state.usuario!.copyWith(edad: event.edad)
      );
  }else if (event is NuevaProfesion) {
    yield state.copyWith(
      usuState: state.usuario!.copyWith(profesiones: [
        ...state.usuario!.profesiones,
        event.profesion
      ])
    );
  }else if (event is BorrarUsuario) {
    yield state.estadoInicial();
  }

   //yield UsuarioState();
 }

}