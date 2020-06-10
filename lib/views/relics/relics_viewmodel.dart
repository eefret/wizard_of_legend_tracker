import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:wizard_of_legend_tracker/app/models/arcana.dart';
import 'dart:convert';

class RelicsViewModel extends FutureViewModel<List<Arcana>> {
  final BuildContext context;

  RelicsViewModel(this.context);

  @override
  Future<List<Arcana>> futureToRun() async {
    var relics = await rootBundle.loadString('assets/relics.json');
    var arcanas = await DefaultAssetBundle.of(this.context)
        .loadString('assets/arcanas.json');
    json.decode(relics);
    List<Map<String, dynamic>> arcanasList = json.decode(arcanas);
    List<Map<String, dynamic>> relicsList = json.decode(relics);
    print(arcanasList[0]);
    print(arcanasList.map((e) => Arcana.fromJson(e)));
    return arcanasList.map((e) => Arcana.fromJson(e));
  }
}
