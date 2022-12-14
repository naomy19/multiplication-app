import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();

  String infoResultado = "Informe os números!";

  void _calcularMultiplicacao() {
    setState(() {
      double n1 = double.parse(n1Controller.text);
      double n2 = double.parse(n2Controller.text);

      double resultado = n1 * n2;

      infoResultado = 'Resultado: $resultado';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: _corpo(),
      ),
    );
  }

  _titulo() {
    return AppBar(
      backgroundColor: Colors.red.shade300,
      title: Text("Multiplicador de Números", style: TextStyle(fontSize: 25.0)),
      centerTitle: true,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(20.0, 80.0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _campo("Digite o 1° número", n1Controller),
          _campo("Digite o 2° número", n2Controller),
          _botao(),
          _texto(infoResultado),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: labelTitulo, labelStyle: TextStyle(color: Colors.red.shade200)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red.shade400, fontSize: 25.0),
      controller: objController,
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularMultiplicacao,
          child: Text("Calcular", style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.red.shade300,
        ),
      ),
    );
  }

  _texto(textoParaExibir) {
    return Padding(
      padding: EdgeInsets.only(top: 40.0),
      child: Text(
        textoParaExibir,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.brown.shade800, fontSize: 25.0),
      ),
    );
  }
}
