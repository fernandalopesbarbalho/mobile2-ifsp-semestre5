import 'package:flutter/material.dart';
import '../models/mago.dart';

class MagoDetailScreen extends StatelessWidget {
  final Mago mago;

  const MagoDetailScreen({super.key, required this.mago});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(mago.nome)),
      body: ListView.builder(
        itemCount: mago.feiticos.length,
        itemBuilder: (context, index) {
          final feitico = mago.feiticos[index];
          return ListTile(
            title: Text(feitico.nome),
            subtitle: Text('${feitico.descricao}\nElemento: ${feitico.elemento}'),
          );
        },
      ),
    );
  }
}
