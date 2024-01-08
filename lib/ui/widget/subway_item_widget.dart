import 'package:flutter/material.dart';
import 'package:subway_api/data/model/subway_item.dart';

class SubwayItemWidget extends StatelessWidget {
  final SubwayItem subwayItem;

  const SubwayItemWidget({
    super.key,
    required this.subwayItem,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(subwayItem.stationName),
      subtitle: Text(subwayItem.subwayId),
    );
  }
}
