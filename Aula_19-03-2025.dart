import 'package:flutter/material.dart';

void main() => runApp(HomeStateful());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
Widget build(BuildContext context) {
  return MaterialApp(
  title: "Aula de Lab V",
  home: HomeStateful(),
  );
}
}

class HomeStateful extends StatefulWidget {
   //const HomeStatefulState createState() => _HomeStatefulState();
  
  @override
  _HomeSatefulState createState() => _HomeSatefulState();
}

class _HomeSatefulState extends State<HomeStateful> {
        var _frase = "Seja feliz, hoje e sempre";
@override
  Widget build(BuildContext context) {
    print("chamado");

    return Scaffold(
      appBar: AppBar(
        title: Text("Pensamento do Dia"),
      ),
      body: Container(
        child: Column(
          children: <Widget> {
        ElevatedButton(
          onPressed: (){
            setState((){
              _frase = "Substitua a frase";
            });
          } 
          child: Text('Clique aqui'),
        ),
           Padding(
            padding: EdgeInsets.all(16),
              child: Text ("Frase $_frase"))
      })),
    );
  }
}
