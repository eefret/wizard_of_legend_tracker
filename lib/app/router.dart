import 'package:auto_route/auto_route_annotations.dart';
import 'package:wizard_of_legend_tracker/views/home/home_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  HomeView homeViewRoute;
}
