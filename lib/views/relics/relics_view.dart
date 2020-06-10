import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wizard_of_legend_tracker/views/relics/relics_viewmodel.dart';

class RelicsView extends StatelessWidget {
  const RelicsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      builder: (context, model, child) => Text('Relics'), 
      viewModelBuilder: () => RelicsViewModel(context)
    );
  }
}