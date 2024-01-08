import 'package:subway_api/data/model/subway_item.dart';

abstract interface class SubwayRepository {
  Future<List<SubwayItem>> getSubwayItem(String query);
}
