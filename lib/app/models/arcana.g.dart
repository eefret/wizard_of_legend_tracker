// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arcana.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Arcana _$ArcanaFromJson(Map<String, dynamic> json) {
  return Arcana(
    id: json['id'] as String,
    item_name: json['item_name'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    element: json['element'] as String,
    type: json['type'] as String,
    damage: json['damage'] as String,
    cooldown: json['cooldown'] as String,
    knockback: json['knockback'] as String,
    duration: json['duration'] as String,
    costCoins: int.tryParse(json['cost_coins']) ?? 0,
    costGems: int.tryParse(json['cost_gems']) ?? 0,
    pool: int.tryParse(json['pool']) ?? 0,
  );
}

Map<String, dynamic> _$ArcanaToJson(Arcana instance) => <String, dynamic>{
      'id': instance.id,
      'item_name': instance.item_name,
      'name': instance.name,
      'description': instance.description,
      'element': instance.element,
      'type': instance.type,
      'damage': instance.damage,
      'cooldown': instance.cooldown,
      'knockback': instance.knockback,
      'duration': instance.duration,
      'cost_coins': instance.costCoins,
      'cost_gems': instance.costGems,
      'pool': instance.pool,
    };
