import 'package:flutter/material.dart';
import 'package:my_first_app/providers/authantification_provider.dart';
import 'package:my_first_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late AuthProvider provider;
  late UserProvider userProvider;

  @override
  void initState() {
    super.initState();
    provider = Provider.of<AuthProvider>(context, listen: false);
    userProvider = Provider.of<UserProvider>(context, listen: false);
  }

  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  // final titleController = TextEditingController();
  // final bodyController = TextEditingController();
  // final userIdController = TextEditingController();

  final counter = ValueNotifier(0);

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
    emailController.dispose();
    // titleController.dispose();
    // userIdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.value++;
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
              // valueListenable: emailController,
              valueListenable: counter,
              builder: (context, value, child) {
                return Text(
                  value.toString(),
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
            const SizedBox(height: 20),
            // Text(emailController.text),
            TextField(
              // controller: titleController,

              onChanged: (value) {
                userProvider.setTitle = value;
              },
              decoration: const InputDecoration(
                hintText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              // controller: bodyController,
              onChanged: (value) {
                userProvider.setbody = value;
              },
              decoration: const InputDecoration(
                hintText: 'Body',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

           const TextField(
              // controller: userIdController,
              // onChanged: (value) => provider.setPassword = value,
              decoration:  InputDecoration(
                hintText: 'UserId',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                userProvider.createPost(
                    //title:titleController.text,
                    // body: bodyController.text,
                    // userId: userIdController.text,
                    );
              },
              child: const Text('Create new post'),
            )
            // TextField(
            //   controller: emailController,
            //   onChanged: (value) {
            //     // provider.setEmail = value;
            //     setState(() {});
            //   },
            //   decoration: const InputDecoration(
            //     hintText: 'Email',
            //     border: OutlineInputBorder(),
            //   ),
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            // TextField(
            //   controller: passwordController,
            //   // onChanged: (value) => provider.setPassword = value,
            //   decoration: const InputDecoration(
            //     hintText: 'Password',
            //     border: OutlineInputBorder(),
            //   ),
            // ),
            // const SizedBox(height: 10),
            // ElevatedButton(
            //   onPressed: () {
            //     provider.login(emailController.text, passwordController.text);
            //   },
            //   child: const Text('Login'),
            // )
          ],
        ),
      ),
    );
  }
}
