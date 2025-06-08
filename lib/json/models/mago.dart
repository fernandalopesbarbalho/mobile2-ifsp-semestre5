import 'package:json_annotation/json_annotation.dart';
import 'feitico.dart';

part 'mago.g.dart';

@JsonSerializable(explicitToJson: true)
class Mago {
  String nome;
  int idade;
  List<Feitico> feiticos;

  Mago(this.nome, this.idade, this.feiticos);

  factory Mago.fromJson(Map<String, dynamic> json) => _$MagoFromJson(json);
  Map<String, dynamic> toJson() => _$MagoToJson(this);
}