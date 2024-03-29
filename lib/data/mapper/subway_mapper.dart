import 'package:subway_api/data/dto/subway_dto.dart';
import 'package:subway_api/data/model/subway_item.dart';

extension DtoToSubway on RealtimeArrivalList {
  SubwayItem toSubwayItem() {
    return SubwayItem(
      stationName: statnNm ?? '',
      lastStation: bstatnNm ?? '',
      upDown: updnLine ?? '',
      arrivalMsg: arvlMsg2 ?? '',
    );
  }
}
