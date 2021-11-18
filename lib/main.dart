import 'package:ciren/bloc/usuario/usuario_bloc.dart';
import 'package:flutter/material.dart';
import 'package:ciren/pages/login.dart';
import 'package:ciren/pages/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => new UsuarioBloc()),
        // BlocProvider
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ciren',
        initialRoute: 'login',
        routes: {
          'login': (_) => Login(),
          'home': (_) => Home(),
        },
      ),
    );
  }
}

