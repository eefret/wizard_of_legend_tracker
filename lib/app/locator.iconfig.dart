// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:wizard_of_legend_tracker/app/services/third_party_services.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wizard_of_legend_tracker/app/services/items_service.dart';
import 'package:wizard_of_legend_tracker/app/services/summary_service.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  g.registerLazySingleton<DialogService>(
      () => thirdPartyServicesModule.dialogService);
  g.registerLazySingleton<ItemsService>(() => ItemsService());
  g.registerLazySingleton<NavigationService>(
      () => thirdPartyServicesModule.nativationService);
  g.registerLazySingleton<SummaryService>(() => SummaryService());
}

class _$ThirdPartyServicesModule extends ThirdPartyServicesModule {
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get nativationService => NavigationService();
}
