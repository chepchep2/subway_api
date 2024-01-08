import 'package:subway_api/data/model/subway_item.dart';
import 'package:subway_api/data/repository/subway_repository.dart';

class MockRepository implements SubwayRepository {
  @override
  Future<List<SubwayItem>> getSubwayItem(String query) async {
    return [
      SubwayItem(
        subwayId: "1065",
        stationName: "서울",
      ),
      SubwayItem(
        subwayId: "1001",
        stationName: "서울",
      ),
      SubwayItem(
        subwayId: "1004",
        stationName: "서울",
      ),
    ];
  }

}