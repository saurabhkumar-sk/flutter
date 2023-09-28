import 'package:flutter/material.dart';
import 'package:my_first_app/utils/database.dart';
import 'package:my_first_app/utils/utils.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<Map<String, dynamic>> myList = [];
  bool loader = false;

  int myLimit = 20;
  int myOffset = 0;
  bool pageinate = true;

  Future<void> getList({int offset = 0, int limit = 20}) async {
    if (!pageinate) {
      return;
    }
    setState(() {
      loader = true;
    });
    await getData(offset: myOffset, limit: myLimit).then((value) {
      myList += value;
      myOffset = myOffset + 20;
      myLimit = myLimit + 20;

      if (value.length < 20) pageinate = false;

      loader = false;
      setState(() {});
    });
  }

  Future<List<Map<String, dynamic>>> getData({
    int limit = 20,
    int offset = 0,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    final list = myImages.getRange(offset, limit).toList();
    await Future.delayed(const Duration(seconds: 2));
    return list;
  }

  @override
  void initState() {
    getList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lists")),
      body: Scrollbar(
        interactive: true,
        thickness: 10,
        trackVisibility: true,
        thumbVisibility: true,
        radius: const Radius.circular(15),
        scrollbarOrientation: ScrollbarOrientation.right,
        child: NotificationListener(
          onNotification: (notification) => Utils.scrollNotifier(
            notification,
            () {
              getList(offset: myOffset);
            },
          ),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: List.generate(
                myList.length + (loader ? 1 : 0),
                (index) => index == myList.length
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(
                          top: 5.0,
                          left: 10,
                          right: 15,
                        ),
                        child: ListTile(
                          tileColor: index.isEven ? Colors.amber : Colors.cyan,
                          title: Text(
                            myList[index]['name'],
                          ),
                          subtitle: Text(myList[index]['age'].toString()),
                        ),
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
