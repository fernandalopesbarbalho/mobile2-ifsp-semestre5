// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mago.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mago _$MagoFromJson(Map<String, dynamic> json) => Mago(
  json['nome'] as String,
  (json['idade'] as num).toInt(),
  (json['feiticos'] as List<dynamic>)
      .map((e) => Feitico.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MagoToJson(Mago instance) => <String, dynamic>{
  'nome': instance.nome,
  'idade': instance.idade,
  'feiticos': instance.feiticos.map((e) => e.toJson()).toList(),
};
