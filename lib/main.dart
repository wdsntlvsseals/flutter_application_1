import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _checado = false;
  String _selec = "Não Selecionado";

  void _alterarValor() {
    setState(() {
      _checado = !_checado;
      if (_checado) {
        _selec = "Selecionado";
      } else {
        _selec = "Não selecionado";
      }
    });
    print("Clicou...${_checado}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste de Checkbox"),
      ),
      body: Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_selec),
              Checkbox(
                  value: _checado,
                  onChanged: (newValue) {
                    _alterarValor();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
