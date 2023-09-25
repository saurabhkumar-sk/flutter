import 'dart:developer';

import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  String? priceError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Validation',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppTextField(
              labelText: 'Product name',
              hintText: 'Enter product name',
              errorText: 'Product name is required *',
            ),
            AppTextField(
              labelText: 'Product price',
              hintText: 'Enter product price',
              errorText: 'Product price is required *',
              customError: priceError,
              onchange: (value) {
                final val = int.tryParse(value);
                // if (val == null) {
                //   priceError = 'Entered price is invalid';
                // } else {
                //   priceError = null;
                // }

                priceError =
                    val == null ? "Entered price is invalid (number)" : null;
                setState(() {});
              },
            ),
            const AppTextField(
              labelText: 'Product description',
              hintText: 'Enter product description',
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  log('Product added');
                }
              },
              child: const Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}

class AppTextField extends StatelessWidget {
  // final EdgeInsetsGeometry margin;
  final String labelText;
  final String? hintText;
  final EdgeInsetsGeometry? margin;
  final TextEditingController? controller;
  final String? errorText;
  final String? customError;
  // final void Function(String)? onchange;          //or
  final ValueChanged<String>? onchange;
  final VoidCallback? onTap;

  const AppTextField({
    super.key,
    required this.labelText,
    this.hintText,
    // this.margin = const EdgeInsets.all(15),
    this.margin,
    this.controller,
    this.errorText,
    this.customError,
    this.onchange,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? const EdgeInsets.all(15),
      child: TextFormField(
        onChanged: onchange,
        onTap: onTap,
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value!.isEmpty) {
            return errorText;
          }
          return customError;
        },
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple, width: 2),
          ),
        ),
      ),
    );
  }
}
