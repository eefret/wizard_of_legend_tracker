import 'package:json_annotation/json_annotation.dart';
import 'package:wizard_of_legend_tracker/app/models/item.dart';

part 'arcana.g.dart';

@JsonSerializable(nullable: false)
class Arcana extends Item {
  final String name;
  final String description;
  final String element;
  final String type;
  final String damage;
  final String cooldown;
  final String knockback;
  final String duration;
  @JsonKey(defaultValue: 0, name: 'cost_coins', nullable: true)
  final int costCoins;
  @JsonKey(defaultValue: 0, name: 'cost_gems', nullable: true)
  final int costGems;
  @JsonKey(defaultValue: 0, nullable: true)
  final int pool;

  Arcana(
      {String id,
      String item_name,
      this.name,
      this.description,
      this.element,
      this.type,
      this.damage,
      this.cooldown,
      this.knockback,
      this.duration,
      this.costCoins,
      this.costGems,
      this.pool})
      : super(id, item_name);

  factory Arcana.fromJson(Map<String, dynamic> json) => _$ArcanaFromJson(json);
  Map<String, dynamic> toJson() => _$ArcanaToJson(this);
}
