import 'dart:convert';

import 'package:subway_api/data/dto/subway_dto.dart';
import 'package:http/http.dart' as http;

class SubwayApi {
  Future<SubwayDto> getSubway(String name) async {
    final response = await http.get(Uri.parse('http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/$name'));

    return SubwayDto.fromJson(jsonDecode(response.body));
  }
}