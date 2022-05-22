// ignore_for_file: file_names

import 'package:currency_converter_test/function/fetchcuurecy.dart';
import 'package:dropdown_search/dropdown_search.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnyToAny extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables

  // ignore: prefer_typing_uninitialized_variables
  final rates;
  final Map currencies;
  const AnyToAny({Key? key, @required this.rates, required this.currencies})
      : super(key: key);

  @override
  _AnyToAnyState createState() => _AnyToAnyState();
}

class _AnyToAnyState extends State<AnyToAny> {
  TextEditingController amountController = TextEditingController();

  String dropdownValue1 = "Australian Dollar";
  String dropdownValue2 = "Australian Dollar";
  String answer = 'plz enter the amount';
  String respo = " ";

  @override
  Widget build(BuildContext context) {
    createalertdialog(BuildContext context) {
      return showDialog(
          useSafeArea: true,
          context: context,
          builder: (context) {
            return AlertDialog(
              actions: [
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepOrange),
                    ),
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).pop('dialog');
                    },
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'OK',
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )))
              ],
              title: Text(answer),
            );
          });
    }

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 50),
      child: Container(
        // decoration: BoxDecoration(color: Colors.black54),
        // width: w / 3,
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // const Text(
            //   'Convert Any Currency',
            //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            // ),
            // const SizedBox(height: 20),

            //TextFields for Entering USD
            TextFormField(
              cursorColor: Colors.green,
              key: const ValueKey('amount'),
              controller: amountController,
              decoration: const InputDecoration(
                  hintText: 'Enter Amount',
                  // hintStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.deepOrange,
                  )),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.white,
                  ))),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),

            Column(
              children: [
                DropdownSearch<String>(
                  popupTitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back)),
                        const SizedBox(
                          width: 10,
                        ),
                        const Card(
                          elevation: 0,
                          shadowColor: Colors.transparent,
                          color: Colors.transparent,
                          child: Text(
                            'Currencies',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )),
                  ),
                  showSearchBox: true,
                  mode: Mode.BOTTOM_SHEET,
                  dialogMaxWidth: MediaQuery.of(context).size.width,
                  maxHeight: MediaQuery.of(context).size.height,
                  autoFocusSearchBox: true,
                  selectedItem: dropdownValue1,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue1 = newValue!;
                    });
                  },
                  items: const [
                    'Australian Dollar',
                    '"United Arab Emirates Dirham',
                    'Afghan Afghani',
                    'Albanian Lek',
                    'Armenian Dram',
                    'Netherlands Antillean Guilder',
                    'Angolan Kwanza',
                    'Argentine Peso',
                    'Aruban Florin',
                    'Azerbaijani Manat',
                    'Bosnia-Herzegovina Convertible Mark',
                    'Barbadian Dollar',
                    'Bangladeshi Taka',
                    'Bulgarian Lev'
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                DropdownSearch<String>(
                  popupTitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back)),
                        const SizedBox(
                          width: 10,
                        ),
                        const Card(
                          elevation: 0,
                          shadowColor: Colors.transparent,
                          color: Colors.transparent,
                          child: Text(
                            'Currencies',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )),
                  ),
                  showSearchBox: true,
                  mode: Mode.BOTTOM_SHEET,
                  dialogMaxWidth: MediaQuery.of(context).size.width,
                  maxHeight: MediaQuery.of(context).size.height,
                  autoFocusSearchBox: true,
                  selectedItem: dropdownValue2,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue2 = newValue!;
                    });
                  },
                  items: const [
                    'Australian Dollar',
                    '"United Arab Emirates Dirham',
                    'Afghan Afghani',
                    'Albanian Lek',
                    'Armenian Dram',
                    'Netherlands Antillean Guilder',
                    'Angolan Kwanza',
                    'Argentine Peso',
                    'Aruban Florin',
                    'Azerbaijani Manat',
                    'Bosnia-Herzegovina Convertible Mark',
                    'Barbadian Dollar',
                    'Bangladeshi Taka',
                    'Bulgarian Lev'
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      (amountController.text.isNotEmpty)
                          ? setState(() {
                              answer = amountController.text +
                                  ' ' +
                                  dropdownValue1 +
                                  '='
                                      ' ' +
                                  convertany(
                                      widget.rates,
                                      amountController.text,
                                      dropdownValue1,
                                      dropdownValue2,
                                      widget.currencies) +
                                  ' ' +
                                  dropdownValue2;
                              setState(() {
                                amountController.clear();
                              });
                            })
                          : const Center(
                              child: Text('hello'),
                            );

                      createalertdialog(context);
                    },
                    child: Text(
                      'Convert',
                      style: GoogleFonts.lato(),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepOrange),
                    )),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        amountController.clear();
                      });
                    },
                    child: Text(
                      '  Reset  ',
                      style: GoogleFonts.lato(),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepOrange),
                    )),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            const SizedBox(height: 20),
            // Text(
            //   answer,
            //   style: GoogleFonts.lato(
            //       letterSpacing: 1.00, fontWeight: FontWeight.bold),
            // ),

            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
