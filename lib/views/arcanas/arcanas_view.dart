

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:wizard_of_legend_tracker/views/arcanas/arcanas_viewmodel.dart';

class ArcanasView extends StatelessWidget {
  const ArcanasView({Key key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    
    
    return ViewModelBuilder.reactive(
      builder: (context, model, child) => Text('arcanas'), 
      viewModelBuilder: () => ArcanasViewModel()
    );
  }
}