import 'package:flutter/material.dart';
import 'package:subway_api/data/model/subway_item.dart';
import 'package:subway_api/data/repository/subway_repository_impl.dart';
import 'package:subway_api/ui/widget/subway_item_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final repository = SubwayRepositoryImple();

  final subwayNameTextEditingController = TextEditingController();

  List<SubwayItem> subwayItems = [];

  Future<void> getSubwayNames(String name) async {
    subwayItems = await repository.getSubwayItem(name);

    setState(() {});
  }

  @override
  void dispose() {
    subwayNameTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              TextField(
                controller: subwayNameTextEditingController,
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
                      getSubwayNames(subwayNameTextEditingController.text);
                    },
                    icon: const Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: subwayItems.length,
                  itemBuilder: (context, index) {
                    final subwayItem = subwayItems[index];
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
