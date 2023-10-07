//➡️➡️➡️➡️➡️➡️➡️➡️Random Api used in fututre builder
import 'package:flutter/material.dart';
import 'package:my_first_app/models/api_users.dart';
import 'package:my_first_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

class ProviderUserScreen extends StatefulWidget {
  const ProviderUserScreen({super.key});

  @override
  State<ProviderUserScreen> createState() => _ProviderUserScreenState();
}

class _ProviderUserScreenState extends State<ProviderUserScreen> {
  bool loading = true;

  late UserProvider provider;

  @override
  void initState() {
    super.initState();
    provider = Provider.of<UserProvider>(context, listen: false);
    provider.getApiUser().then((value) {
      setState(() {
        loading = false;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    provider.apiUserList.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
          child: Text(
            'Api Users',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )),
        body: Selector<UserProvider, List<ApiUser>>(
          selector: (p0, p1) => p1.apiUserList,
          builder: (context, users, child) => loading
              ? const Center(child: CircularProgressIndicator())
              : !loading && users.isEmpty
                  ? const Center(child: Text('Something went wrong'))
                  : ListView.separated(
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(users[index].name),
                          subtitle: Text(users[index].userName),
                          trailing: Text(users[index].id.toString()),
                        );
                      },
                    ),
        ));
  }
}
