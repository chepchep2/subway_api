import 'package:flutter/material.dart';
import 'package:subway_api/data/model/subway_item.dart';
import 'package:subway_api/data/repository/mock_repository.dart';
import 'package:subway_api/ui/widget/subway_item_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final repository = MockRepository();

  @override
  Widget build(BuildContext context) {
    List<SubwayItem> subwayItems = [];

    Future<void> getSubwayNames(String query) async {
      subwayItems = await repository.getSubwayItem(query);

      setState(() {});
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: '역 이름을 적으세요.',
                  suffixIcon: IconButton(
                    onPressed: () {
                      getSubwayNames('서울');
                    },
                    icon: const Icon(Icons.search),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    final subwayItem =
                        SubwayItem(subwayId: "1065", stationName: "서울");
                    return SubwayItemWidget(subwayItem: subwayItem);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
