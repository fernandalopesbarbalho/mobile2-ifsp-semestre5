import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:myapp/list_view/mago.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MagoListScreen(),
    );
  }
}

class MagoListScreen extends StatelessWidget {
  const MagoListScreen({super.key});

  final String jsonString = '''
{
  "magos": [
    {
      "nome": "Gandalf, o Cinzento",
      "idade": 2000,
      "nivelMagico": 15,
      "inteligencia": 18.5,
      "mana": 250.0,
      "afinidadeFogo": 4,
      "afinidadeAgua": 2,
      "afinidadeTerra": 3,
      "afinidadeAr": 7,
      "feitico1": "Luz Ofuscante",
      "feitico2": "Escudo Arcano",
      "feitico3": "Chama de Anor"
    },
    {
      "nome": "Merlin",
      "idade": 832,
      "nivelMagico": 20,
      "inteligencia": 20.0,
      "mana": 300.0,
      "afinidadeFogo": 3,
      "afinidadeAgua": 5,
      "afinidadeTerra": 6,
      "afinidadeAr": 4,
      "feitico1": "Metamorfose",
      "feitico2": "Visão do Futuro",
      "feitico3": "Controle do Clima"
    },
    {
      "nome": "Alatar, o Azul",
      "idade": 1500,
      "nivelMagico": 12,
      "inteligencia": 17.0,
      "mana": 220.0,
      "afinidadeFogo": 1,
      "afinidadeAgua": 8,
      "afinidadeTerra": 2,
      "afinidadeAr": 5,
      "feitico1": "Torrente Congelante",
      "feitico2": "Muralha de Gelo",
      "feitico3": "Telepatia"
    },
    {
      "nome": "Morgana",
      "idade": 543,
      "nivelMagico": 18,
      "inteligencia": 19.5,
      "mana": 280.0,
      "afinidadeFogo": 6,
      "afinidadeAgua": 3,
      "afinidadeTerra": 2,
      "afinidadeAr": 2,
      "feitico1": "Controle Mental",
      "feitico2": "Fogo das Sombras",
      "feitico3": "Ilusão"
    },
    {
      "nome": "Dumbledore",
      "idade": 150,
      "nivelMagico": 17,
      "inteligencia": 19.0,
      "mana": 270.0,
      "afinidadeFogo": 5,
      "afinidadeAgua": 4,
      "afinidadeTerra": 3,
      "afinidadeAr": 6,
      "feitico1": "Patrono",
      "feitico2": "Leglimência",
      "feitico3": "Feitiço Fidelius"
    },
    {
      "nome": "Elminster",
      "idade": 1275,
      "nivelMagico": 19,
      "inteligencia": 19.8,
      "mana": 290.0,
      "afinidadeFogo": 7,
      "afinidadeAgua": 3,
      "afinidadeTerra": 4,
      "afinidadeAr": 5,
      "feitico1": "Palavra de Poder",
      "feitico2": "Portal Dimensional",
      "feitico3": "Chuva de Meteoros"
    },
    {
      "nome": "Raistlin Majere",
      "idade": 34,
      "nivelMagico": 16,
      "inteligencia": 18.0,
      "mana": 200.0,
      "afinidadeFogo": 8,
      "afinidadeAgua": 2,
      "afinidadeTerra": 1,
      "afinidadeAr": 3,
      "feitico1": "Sono",
      "feitico2": "Bola de Fogo",
      "feitico3": "Pele de Dragão"
    },
    {
      "nome": "Medivh",
      "idade": 403,
      "nivelMagico": 19,
      "inteligencia": 19.7,
      "mana": 285.0,
      "afinidadeFogo": 5,
      "afinidadeAgua": 5,
      "afinidadeTerra": 5,
      "afinidadeAr": 5,
      "feitico1": "Abrir Portal",
      "feitico2": "Visão Remota",
      "feitico3": "Transformação Corvo"
    },
    {
      "nome": "Circe",
      "idade": 950,
      "nivelMagico": 16,
      "inteligencia": 18.2,
      "mana": 240.0,
      "afinidadeFogo": 2,
      "afinidadeAgua": 6,
      "afinidadeTerra": 7,
      "afinidadeAr": 1,
      "feitico1": "Transformar em Animal",
      "feitico2": "Poção de Amor",
      "feitico3": "Crescimento Vegetal"
    },
    {
      "nome": "Luna Estrela",
      "idade": 27,
      "nivelMagico": 8,
      "inteligencia": 15.5,
      "mana": 180.0,
      "afinidadeFogo": 1,
      "afinidadeAgua": 3,
      "afinidadeTerra": 2,
      "afinidadeAr": 9,
      "feitico1": "Levitação",
      "feitico2": "Sussurro do Vento",
      "feitico3": "Salto Aéreo"
    },
    {
      "nome": "Magnus Bane",
      "idade": 412,
      "nivelMagico": 14,
      "inteligencia": 17.3,
      "mana": 230.0,
      "afinidadeFogo": 6,
      "afinidadeAgua": 2,
      "afinidadeTerra": 1,
      "afinidadeAr": 4,
      "feitico1": "Portal Dimensional",
      "feitico2": "Glamour",
      "feitico3": "Fogo Demoníaco"
    },
    {
      "nome": "Tasha",
      "idade": 340,
      "nivelMagico": 15,
      "inteligencia": 18.7,
      "mana": 245.0,
      "afinidadeFogo": 3,
      "afinidadeAgua": 3,
      "afinidadeTerra": 8,
      "afinidadeAr": 2,
      "feitico1": "Risada Hedionda",
      "feitico2": "Recipiente Arcano",
      "feitico3": "Convocação Demoníaca"
    },
    {
      "nome": "Khadgar",
      "idade": 68,
      "nivelMagico": 13,
      "inteligencia": 16.8,
      "mana": 210.0,
      "afinidadeFogo": 4,
      "afinidadeAgua": 4,
      "afinidadeTerra": 3,
      "afinidadeAr": 4,
      "feitico1": "Polimorfar",
      "feitico2": "Mísseis Arcanos",
      "feitico3": "Contrafeitiço"
    },
    {
      "nome": "Jaina Proudmoore",
      "idade": 39,
      "nivelMagico": 12,
      "inteligencia": 16.5,
      "mana": 205.0,
      "afinidadeFogo": 2,
      "afinidadeAgua": 9,
      "afinidadeTerra": 1,
      "afinidadeAr": 3,
      "feitico1": "Cone de Gelo",
      "feitico2": "Blizzard",
      "feitico3": "Barreira de Gelo"
    },
    {
      "nome": "Taako",
      "idade": 125,
      "nivelMagico": 11,
      "inteligencia": 16.0,
      "mana": 190.0,
      "afinidadeFogo": 3,
      "afinidadeAgua": 1,
      "afinidadeTerra": 2,
      "afinidadeAr": 8,
      "feitico1": "Mãos Mágicas",
      "feitico2": "Disfarce Ilusório",
      "feitico3": "Lufada Trovejante"
    }
  ]
}
  ''';

  @override
  Widget build(BuildContext context) {
    final decoded = jsonDecode(jsonString);
    final List<dynamic> jsonList = decoded['magos'];
    final List<Mago> magos = jsonList.map((m) => Mago.fromJson(m)).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Magos')),
      body: ListView.builder(
        itemCount: magos.length,
        itemBuilder: (context, index) {
          final mago = magos[index];
          return Card(
            margin: const EdgeInsets.all(10),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mago.nome,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text('Idade: ${mago.idade}'),
                  Text('Nível Mágico: ${mago.nivelMagico}'),
                  Text('Inteligência: ${mago.inteligencia}'),
                  Text('Mana: ${mago.mana}'),
                  const SizedBox(height: 8),
                  Text('Afinidades:'),
                  Text('Fogo: ${mago.afinidadeFogo}'),
                  Text('Água: ${mago.afinidadeAgua}'),
                  Text('Terra: ${mago.afinidadeTerra}'),
                  Text('Ar: ${mago.afinidadeAr}'),
                  const SizedBox(height: 8),
                  Text('Feitiços:'),
                  Text('• ${mago.feitico1}'),
                  Text('• ${mago.feitico2}'),
                  Text('• ${mago.feitico3}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
