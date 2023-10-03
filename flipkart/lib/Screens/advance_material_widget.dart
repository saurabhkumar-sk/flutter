import 'package:flutter/material.dart';
import 'package:my_first_app/utils/utils.dart';

enum Gender { male, female, other }

class AdvanceMaterialWidget extends StatefulWidget {
  const AdvanceMaterialWidget({super.key});

  @override
  State<AdvanceMaterialWidget> createState() => _AdvanceMaterialWidgetState();
}

class _AdvanceMaterialWidgetState extends State<AdvanceMaterialWidget> {
  //RadioButton
  // Gender selectedgender = Gender.male;
  //or
  int selectedgender = 1;
  List gender = ['male', 'female', 'other'];

//Slider
  double currentSliderValue = 10;

  //Switch
  bool light = true;

  //picked date
  String? date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Picked Time
          GestureDetector(
            onTap: () async {
              final pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now().subtract(
                  const Duration(days: 1500),
                ),
                lastDate: DateTime.now().add(
                  const Duration(days: 1500),
                ),
              );

              if (pickedDate != null) {
                // final finalPickedDate = '${pickedDate.day}/'
                //     '${pickedDate.month}/'
                //     '${pickedDate.year.toString()}';
                setState(() {
                  // date = finalPickedDate;

                  date = pickedDate.toDate();
                });
              }
            },
            child: Text(
              date ?? 'Picked date',
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          //Badge
          const Center(
            child: Badge(
              label: Text('5'),
              child: Icon(
                Icons.shopping_cart,
                size: 40,
              ),
            ),
          ),

          //SnackBar
          IconButton(
            onPressed: () {
              Utils.showSnack('Product added');

              // ScaffoldMessenger.of(context).showSnackBar(
              //   SnackBar(

              //     // actionOverflowThreshold: 15,
              //     behavior: SnackBarBehavior.floating,
              //     action: SnackBarAction(

              //       label: 'ok',
              //       onPressed: () {},
              //     ),
              //     content: Text('data'),
              //   ),
              // );
            },
            icon: const Icon(
              Icons.shopping_cart_checkout_sharp,
            ),
          ),

          //Chip
          const Chip(
            // backgroundColor: Colors.amber,
            color: MaterialStatePropertyAll(Colors.red),
            // deleteButtonTooltipMessage: 'delete',

            // elevation: 10,
            deleteIcon: Icon(Icons.remove),
            label: Text('chip'),
          ),

          //ChoiceChip
          const ChoiceChip(
            pressElevation: 15,
            label: Text('data'),
            selected: false,
          ),

          //Radio Button

          // RadioListTile(
          //     title: const Text('Male'),
          //     value: 1,
          //     groupValue: selectedgender,
          //     onChanged: (value) {
          //       setState(() {
          //         selectedgender = value!;
          //       });
          //     }),
          // RadioListTile(
          //     title: const Text('Female'),
          //     value: 2,
          //     groupValue: selectedgender,
          //     onChanged: (value) {
          //       setState(() {
          //         selectedgender = value!;
          //       });
          //     }),
          // RadioListTile(
          //   title: const Text('Other'),
          //   value: 3,
          //   groupValue: selectedgender,
          //   onChanged: (value) {
          //     setState(
          //       () {
          //         selectedgender = value!;
          //       },
          //     );
          //   },
          // ),
          //or
          ...List.generate(
            gender.length,
            (index) => RadioListTile(
              title: Text(gender[index]),
              value: index,
              groupValue: selectedgender,
              onChanged: (value) {
                setState(
                  () {
                    selectedgender = value!;
                  },
                );
              },
            ),
          ),
          // ...List.generate(
          //   gender.length,
          //   (index) => Radio(
          //     value: index,
          //     groupValue: selectedgender,
          //     onChanged: (value) {
          //       setState(
          //         () {
          //           selectedgender = value!;
          //         },
          //       );
          //     },
          //   ),
          // ),

          Slider(
            value: currentSliderValue,
            max: 100,
            divisions: 10,
            secondaryTrackValue: 50,
            // activeColor: Colors.red,
            // min: 30,
            // thumbColor: Colors.amber,

            label: currentSliderValue.round().toString(),
            onChanged: (value) {
              setState(
                () {
                  currentSliderValue = value;
                },
              );
            },
          ),

          //Switch
          Switch(
              value: light,
              onChanged: (value) {
                setState(() {
                  light = value;
                });
              })
        ],
      ),
    );
  }
}

//date picker extention
extension DatePickerHelper on DateTime {
  String toDate() {
    return '$day/$month/$year';
  }
}
