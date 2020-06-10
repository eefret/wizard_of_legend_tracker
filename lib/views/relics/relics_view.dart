import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:wizard_of_legend_tracker/views/relics/relics_viewmodel.dart';

import '../../app/models/arcana.dart';

class RelicsView extends StatelessWidget {
  const RelicsView({Key key}) : super(key: key);

  _getRelics(context) async {
    var arcanas = await rootBundle.loadString('assets/arcanas.json');
    List<Arcana> arcanasList = List<Arcana>();
    json.decode(arcanas).forEach((element) {
      arcanasList.add(Arcana.fromJson(element));
    });
    print(arcanasList.length);
  }

  @override
  Widget build(BuildContext context) {
    _getRelics(context);
    return ViewModelBuilder.reactive(
        builder: (context, RelicsViewModel model, child) => Text('relics'),
        viewModelBuilder: () => RelicsViewModel(context));
  }
}
