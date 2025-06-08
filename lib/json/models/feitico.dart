import 'package:json_annotation/json_annotation.dart';

part 'feitico.g.dart';

@JsonSerializable()
class Feitico {
  String nome;
  String descricao;
  String elemento;

  Feitico(this.nome, this.descricao, this.elemento);

  factory Feitico.fromJson(Map<String, dynamic> json) =>
      _$FeiticoFromJson(json);

  Map<String, dynamic> toJson() => _$FeiticoToJson(this);
}
