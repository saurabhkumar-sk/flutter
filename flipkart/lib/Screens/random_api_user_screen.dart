import 'package:flutter/material.dart';
import 'package:my_first_app/api_services/random_user_services.dart';
import 'package:my_first_app/models/random_models.dart';

class RandomUserScreen extends StatefulWidget {
  const RandomUserScreen({super.key});

  @override
  State<RandomUserScreen> createState() => _RandomUserScreenState();
}

class _RandomUserScreenState extends State<RandomUserScreen> {
  final service = RandomUserServices();

  // @override
  // void initState() {
  //   super.initState();
  //   service.getUserApis();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ApiUsers')),
      body: FutureBuilder(
        future: service.getUserApis(),
        builder:
            (BuildContext context, AsyncSnapshot<List<RandomUser>?> snapshot) {
          return !snapshot.hasData
              ? const Center(child: CircularProgressIndicator())
              : snapshot.hasError
                  ? const Text('Something Wrong')
                  : ListView.separated(
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) => ListTile(
                        // leading: CircleAvatar(backgroundImage: NetworkImage(snapshot.data.)),
                        title: Text(snapshot.data![index].userName),
                        subtitle: Text(snapshot.data![index].phone),
                        trailing:
                            Text(snapshot.data![index].picture.toString()),
                      ),
                    );
        },
      ),
    );
  }
}
