class SubwayItem {
  String subwayId;
  String stationName;

//<editor-fold desc="Data Methods">
  SubwayItem({
    required this.subwayId,
    required this.stationName,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SubwayItem &&
          runtimeType == other.runtimeType &&
          subwayId == other.subwayId &&
          stationName == other.stationName);

  @override
  int get hashCode => subwayId.hashCode ^ stationName.hashCode;

  @override
  String toString() {
    return 'SubwayItem{ subwayId: $subwayId, stationName: $stationName,}';
  }

  SubwayItem copyWith({
    String? subwayId,
    String? stationName,
  }) {
    return SubwayItem(
      subwayId: subwayId ?? this.subwayId,
      stationName: stationName ?? this.stationName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'subwayId': subwayId,
      'stationName': stationName,
    };
  }

  factory SubwayItem.fromMap(Map<String, dynamic> map) {
    return SubwayItem(
      subwayId: map['subwayId'] as String,
      stationName: map['stationName'] as String,
    );
  }

//</editor-fold>
}
