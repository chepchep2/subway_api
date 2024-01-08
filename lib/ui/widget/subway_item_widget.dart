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
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: ListTile(
        title: Text(subwayItem.stationName),
        subtitle: Text(subwayItem.subwayId),
      ),
    );
  }
}
