import 'package:subway_api/data/data_source/subway_api.dart';
import 'package:subway_api/data/mapper/subway_mapper.dart';
import 'package:subway_api/data/model/subway_item.dart';
import 'package:subway_api/data/repository/subway_repository.dart';

class SubwayRepositoryImple implements SubwayRepository {
  final _api = SubwayApi();

  @override
  Future<List<SubwayItem>> getSubwayItem(String name) async {
    final dto = await _api.getSubway(name);
    if (dto.realtimeArrivalList == null) {
      return [];
    }
    return dto.realtimeArrivalList!.map((e) => e.toSubwayItem()).toList();
  }
}
