import 'dart:convert';
import 'package:flutter/material.dart';
import 'models/mago.dart';
import '../json/telas/magos_tela.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<List<Mago>> carregarMagos(BuildContext context) async {
    final String jsonString = await DefaultAssetBundle.of(
      context,
    ).loadString('lib/json/data/magos.json');
    final jsonData = json.decode(jsonString);
    return (jsonData['magos'] as List).map((e) => Mago.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magos',
      home: FutureBuilder<List<Mago>>(
        future: carregarMagos(context),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          } else if (snapshot.hasError) {
            return Scaffold(
              body: Center(child: Text('Erro: ${snapshot.error}')),
            );
          } else {
            return MagoListScreen(magos: snapshot.data!);
          }
        },
      ),
    );
  }
}
