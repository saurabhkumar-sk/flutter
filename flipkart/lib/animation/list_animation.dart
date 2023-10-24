import 'package:flutter/material.dart';

class AnimationListScreen extends StatefulWidget {
  const AnimationListScreen({super.key});

  @override
  State<AnimationListScreen> createState() => _AnimationListScreenState();
}

class _AnimationListScreenState extends State<AnimationListScreen>
    with TickerProviderStateMixin {
  final listKey = GlobalKey<AnimatedListState>();

  late AnimationController controller;

  late Animation<Offset> _animation;

  int counter = 0;

  List<int> _items = [];

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..forward();

    _animation =
        Tween<Offset>(begin: const Offset(-1, 0), end: const Offset(0, 0))
            .animate(controller);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Animation'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          listKey.currentState?.insertItem(
            // 0,
            _items.isEmpty ? 0 : _items.length - 1,
            duration: const Duration(microseconds: 500),
          );
          _items = [counter++, ..._items];
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
      body: AnimatedList(
        key: listKey,
        initialItemCount: _items.length,
        itemBuilder: (context, index, animation) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ScaleTransition(
              scale: animation,
              child: ListTile(
                tileColor: Colors.amber,
                title: Text('data   ${index + 1}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
