// import 'package:flutter/material.dart';

// class ModelsUses extends StatelessWidget {
//   const ModelsUses({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Models'),
//       ),
//       body: ListView.builder(
//         itemCount: users.length,
//         itemBuilder: (BuildContext context, int index) {
//           return ListTile(
//             leading: CircleAvatar(
//               backgroundImage: NetworkImage(users[index].avatar),
//             ),
//             title: Text(users[index].name),
//             subtitle: Text(users[index].meaasge.last.text),
//             trailing: Text('${users[index].meaasge.last.time.minute} min'),
//           );
//         },
//       ),
//     );
//   }
// }
