class SubwayItem {
  String stationName;
  String lastStation;
  String upDown;
  String arrivalMsg;

//<editor-fold desc="Data Methods">
  SubwayItem({
    required this.stationName,
    required this.lastStation,
    required this.upDown,
    required this.arrivalMsg,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SubwayItem &&
          runtimeType == other.runtimeType &&
          stationName == other.stationName &&
          lastStation == other.lastStation &&
          upDown == other.upDown &&
          arrivalMsg == other.arrivalMsg);

  @override
  int get hashCode =>
      stationName.hashCode ^
      lastStation.hashCode ^
      upDown.hashCode ^
      arrivalMsg.hashCode;

  @override
  String toString() {
    return 'SubwayItem{ stationName: $stationName, lastStation: $lastStation, upDown: $upDown, arrivalMsg: $arrivalMsg,}';
  }

  SubwayItem copyWith({
    String? stationName,
    String? lastStation,
    String? upDown,
    String? arrivalMsg,
  }) {
    return SubwayItem(
      stationName: stationName ?? this.stationName,
      lastStation: lastStation ?? this.lastStation,
      upDown: upDown ?? this.upDown,
      arrivalMsg: arrivalMsg ?? this.arrivalMsg,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'stationName': stationName,
      'lastStation': lastStation,
      'upDown': upDown,
      'arrivalMsg': arrivalMsg,
    };
  }

  factory SubwayItem.fromMap(Map<String, dynamic> map) {
    return SubwayItem(
      stationName: map['stationName'] as String,
      lastStation: map['lastStation'] as String,
      upDown: map['upDown'] as String,
      arrivalMsg: map['arrivalMsg'] as String,
    );
  }

//</editor-fold>
}
