import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wizard_of_legend_tracker/app/constants.dart';
import 'package:wizard_of_legend_tracker/app/widgets/centered.dart';
import 'package:wizard_of_legend_tracker/views/arcanas/arcanas_view.dart';
import 'package:wizard_of_legend_tracker/views/home/home_viewmodel.dart';
import 'package:wizard_of_legend_tracker/views/relics/relics_view.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  static TextStyle mojangText = TextStyle(fontFamily: 'Mojang');

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(builder: (context, model, child) => Scaffold(
      appBar: AppBar(
        actions: [
          Center(child: Text('Needed: ', style: mojangText)),
          SizedBox(width: 8),
          Text(model.needed),
          Image.asset('assets/images/icon_chaos_gem.png')
        ],
        title: Text(Constants.appName, style: mojangText),
      ),
      body: Centered(
        child: Row(children: [
          RelicsView(),
          SizedBox(width: 8.0),
          ArcanasView()
        ],)
      ),
    ), viewModelBuilder: () => HomeViewModel());
  }
}
