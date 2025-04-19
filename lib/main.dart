
import 'package:flutter/material.dart';
import 'model/transaction.dart';

void main() => runApp(const DespessasApp());

class DespessasApp extends StatelessWidget {
  const DespessasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage());
  }
}

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final _transacoes = [
    Transaction(
      id: "t1",
      title: "Novo cooler pro pc",
      value: 24.00,
      date: DateTime.now()
    ),
    Transaction(
      id: "t2",
      title: "Nova memoria ddr3 pro pc",
      value: 100.00,
      date: DateTime.now()
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Despesas Pessoais"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text("Grafico"),
              elevation: 5,
            ),
          ),
          Column(
            children: _transacoes.map((tr) => Card(
              child: Text(tr.title),
            )).toList(),
          )
        ],
      ),
    );
  }
}