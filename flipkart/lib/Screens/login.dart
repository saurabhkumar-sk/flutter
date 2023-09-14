import 'package:flutter/material.dart';
import 'package:my_first_app/providers/authantification_provider.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late AuthProvider provider;

  @override
  void initState() {
    super.initState();
    provider = Provider.of<AuthProvider>(context, listen: false);
  }

  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  final counter = ValueNotifier(0);

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
              controller: emailController,
              onChanged: (value) {
                // provider.setEmail = value;
                setState(() {});
              },
              decoration: const InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: passwordController,
              // onChanged: (value) => provider.setPassword = value,
              decoration: const InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                provider.login(emailController.text, passwordController.text);
              },
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
