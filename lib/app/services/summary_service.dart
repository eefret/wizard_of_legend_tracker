

import 'package:injectable/injectable.dart';

@lazySingleton
class SummaryService {
    int _neededGems;

    int get neededGems => _neededGems;
}