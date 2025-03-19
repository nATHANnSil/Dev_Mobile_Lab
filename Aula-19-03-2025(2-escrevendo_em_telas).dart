import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tela Inicial",
      home: const CampoTexto(),
    );
  }
}

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exemplo de Entrada")),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: "Digitar o Valor"),
              onChanged: (String texto) {
                print("Texto digitado: " + texto);
              },

              onSubmitted: (String texto) {
                print("Texto digitado: " + texto);
              },
            ),
          ),
        ],
      ),
    );
  }
}

