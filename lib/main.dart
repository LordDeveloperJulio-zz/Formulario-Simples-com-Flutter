import 'package:flutter/material.dart';

import 'model/Produto.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorQuantidade = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastrando produto'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField( controller: _controladorNome, decoration: InputDecoration(labelText: 'Nome'),
                  keyboardType: TextInputType.text,),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField( controller: _controladorQuantidade, decoration: InputDecoration(labelText: 'Quantidade'),
                  keyboardType: TextInputType.number,),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField( controller: _controladorValor, decoration: InputDecoration(labelText: 'Valor'),
                    keyboardType: TextInputType.number),
              ),
              RaisedButton(
                child: Text('Cadastrar'),
                onPressed: () {
                  final String nome = _controladorNome.text;
                  final int quantidade = int.tryParse(_controladorQuantidade.text);
                  final double valor = double.tryParse(_controladorValor.text);

                  final Produto produtoNovo = Produto(nome, quantidade, valor);
                  print(produtoNovo);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}