import 'package:wizard_of_legend_tracker/app/models/item.dart';

class Arcana extends Item {

  final String name;
  final String description;
  final String element;
  final String type;
  final String damage;
  final String cooldown;
  final String knockback;
  final String duration;
  final String costCoins;
  final String costGems;
  final String pool;
  



  Arcana({String id, String item_name, this.name, this.description, this.element, this.type, this.damage, this.cooldown, this.knockback, this.duration, this.costCoins, this.costGems, this.pool}) : super(id, item_name);

  fromJson(Map<String, dynamic> json) {
    return Arcana(
      id: json['id'],
      item_name: json['item_name'],
      name: json['name'],
      description: json['description'],
      element: json['element'],
      type: json['type'],
      damage: json['damage'],
      cooldown: json['cooldown'],
      knockback: json['knockback'],
      duration: json['duration'],
      costCoins: json['costCoins'],
      costGems: json['costGems'],
      pool: json['pool'],
    );
  }

}