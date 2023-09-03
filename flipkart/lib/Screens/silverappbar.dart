import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SilverAppBarScreen extends StatelessWidget {
  const SilverAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              // automaticallyImplyLeading: false,
              // actions: [Text('data'), Text('dsfaafdsfa')],
              // flexibleSpace: Container(
              //   color: Colors.red,
              //   child: Center(child: Text('sliver')),
              // ),
              // centerTitle: true,
              // titleSpacing: 50,
              // collapsedHeight: 2.0,
              expandedHeight: 150,
              floating: true,
              pinned: true,
              // snap: true,
              // stretch: true,
              // stretchTriggerOffset: 122,
              // toolbarHeight: 200,
              // leadingWidth: 200,
              // systemOverlayStyle: SystemUiOverlayStyle.light,
              // clipBehavior: Clip.hardEdge,

              // bottom: AppBar(backgroundColor: Colors.amber),
              backgroundColor: Colors.indigo,
              title: Text(
                'SliverApp Bar',
                style: TextStyle(color: Colors.white),
              ),
            ),
            // const SliverToBoxAdapter(
            //   child: Padding(
            //     padding: EdgeInsets.all(8.0),
            //     child: Text('saurrabh'),
            //   ),
            // ),
            // SliverFixedExtentList(
            //   delegate: SliverChildListDelegate(
            //     List.generate(
            //       20,
            //       (index) => Text('saurabh kumar'),
            //     ),
            //   ),
            //   itemExtent: 20,
            // ),
            // SliverGrid(
            //   delegate: SliverChildBuilderDelegate(
            //     (context, index) => Container(
            //       color: Colors.blueGrey,
            //       child: Text('$index'),
            //     ),
            //   ),
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //     mainAxisSpacing: 10,
            //     crossAxisSpacing: 10,
            //     crossAxisCount: 3,
            //   ),
            // ),
            SliverList.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return const SizedBox(
                  height: 100,
                  child: Text('data'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
