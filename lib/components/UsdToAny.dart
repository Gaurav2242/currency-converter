
// ignore_for_file: file_names


import 'package:flutter/material.dart';
import 'package:currency_converter_test/function/fetchcuurecy.dart';

class UsdToAny extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final rates;
  final Map currency;

  const UsdToAny({Key? key, required this.rates, required this.currency})
      : super(key: key);

  @override
  State<UsdToAny> createState() => _UsdToAnyState();
}

class _UsdToAnyState extends State<UsdToAny> {
  String dropdownValue = 'AUD';
  String answer = 'Converted Currency will be shown here :)';
  TextEditingController usdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text('USD TO ANY'),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: usdController,
            decoration: const InputDecoration(hintText: "enter usd"),
          ),
          const SizedBox(height: 10),
          DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_drop_down_rounded),
            iconSize: 24,
            elevation: 16,
            isExpanded: true,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: widget.currency.keys
                .toSet()
                .toList()
                .map<DropdownMenuItem<String>>((value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.green;
                    }
                    return Colors.red; // Use the component's default.
                  },
                ),
              ),
              onPressed: () {
                setState(() {
                  answer = usdController.text +
                      'Usd=' +
                      convertusd(
                          widget.rates, usdController.text, dropdownValue) +
                      '' +
                      dropdownValue;
                });
              },
              child: const Text('click here')),
          Text((answer))
        ],
      ),
    );
  }
}
