// DropdownSearch<String>(

                //   mode: Mode.BOTTOM_SHEET,
                //   dialogMaxWidth: MediaQuery.of(context).size.width,
                //   maxHeight: MediaQuery.of(context).size.height,

                //   autoFocusSearchBox: true,
                //   selectedItem: dropdownValue1,

                //   onChanged: (String? newValue) {
                //     setState(() {
                //       dropdownValue1 = newValue!;
                //     });
                //   },

                //   items: const [
                //     'Australian Dollar',
                //     '"United Arab Emirates Dirham',
                //     'Afghan Afghani',
                //     'Albanian Lek',
                //     'Armenian Dram',
                //     'Netherlands Antillean Guilder',
                //     'Angolan Kwanza',
                //     'Argentine Peso',
                //     'Aruban Florin',
                //     'Azerbaijani Manat',
                //     'Bosnia-Herzegovina Convertible Mark',
                //     'Barbadian Dollar',
                //     'Bangladeshi Taka',
                //     'Bulgarian Lev'
                //   ],
                //   // items: widget.currencies.values
                //   //     .toSet()
                //   //     .toList()
                //   //     .map<DropdownMenuItem<String>>((value) {
                //   //   return DropdownMenuItem<String>(
                //   //       value: value,
                //   //       child: Text(
                //   //         value,
                //   //         style: const TextStyle(
                //   //             fontWeight: FontWeight.bold, fontSize: 18),
                //   //       ));
                //   // }).toList(),
                // ),










                // DropdownButton<String>(
                //   itemHeight: 50,
                //   value: dropdownValue2,
                //   icon: const Icon(Icons.arrow_drop_down_rounded),
                //   iconSize: 24,
                //   elevation: 16,
                //   isExpanded: true,
                //   underline: Container(
                //     height: 2,
                //     color: Colors.grey.shade400,
                //   ),
                //   onChanged: (String? newValue) {
                //     setState(() {
                //       dropdownValue2 = newValue!;
                //     });
                //   },
                //   items: widget.currencies.values
                //       .toSet()
                //       .toList()
                //       .map<DropdownMenuItem<String>>((value) {
                //     return DropdownMenuItem<String>(
                //       value: value,
                //       child: Text(
                //         value,
                //         style: const TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 18,
                //         ),
                //       ),
                //     );
                //   }).toList(),
                // ),



                 // Row(
                //   children: [
                //     Expanded(
                //       child: Text(
                //         respo,
                //         style: const TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 18,
                //         ),
                //       ),
                //     ),
                //     // IconButton(
                //     //   onPressed: () async {
                //     //     final result = await showSearch<String>(
                //     //         context: context, delegate: Datasearch());
                //     //     respo = result!;
                //     //   },
                //     //   icon: const Icon(Icons.arrow_drop_down),
                //     // ),
                //   ],
                // ),
                // const Divider(
                //   thickness: 2,
                //   color: Colors.grey,
                //   height: 7,
                // ),









//                 class Datasearch extends SearchDelegate<String> {
//   final currency = ['Indian Rupee', 'Australian Dollar'];

//   String result = 'Australian Dollar';
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//         onPressed: () {
//           close(context, result);
//         },
//         icon: const Icon(Icons.clear),
//       )
//     ];
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//         onPressed: () {
//           query = '';
//         },
//         icon: const Icon(Icons.arrow_back));
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     final suggestonlist = currency.where((currency) {
//       return currency.toLowerCase().contains(query.toLowerCase());
//     });
//     return ListView.builder(
//       itemCount: suggestonlist.length,
//       itemBuilder: (context, int index) {
//         return ListTile(
//           onTap: () {
//             result = suggestonlist.elementAt(index);
//             close(context, result);
//           },
//           leading: Text(suggestonlist.elementAt(index)),
//         );
//       },
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     final suggestonlist = currency.where((currency) {
//       return currency.toLowerCase().contains(query.toLowerCase());
//     });
//     return ListView.builder(
//       itemCount: suggestonlist.length,
//       itemBuilder: (context, int index) {
//         return ListTile(
//           onTap: () {
//             query = suggestonlist.elementAt(index);
//           },
//           leading: Text(suggestonlist.elementAt(index)),
//         );
//       },
//     );
//   }

//   void setResult(String result) {
//     result = result;
//   }

//   String getResult() {
//     return result;
//   }
// }










// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class search extends StatefulWidget {
//   const search({Key? key}) : super(key: key);

//   @override
//   State<search> createState() => _searchState();
// }

// class _searchState extends State<search> {
 

//   String dropdownValue1 = "Australian Dollar";
//   @override
//   Widget build(BuildContext context) {
//     return DropdownSearch<String>(
//       mode: Mode.BOTTOM_SHEET,
//       dialogMaxWidth: MediaQuery.of(context).size.width,
//       maxHeight: MediaQuery.of(context).size.height,
//       autoFocusSearchBox: true,
//       selectedItem: dropdownValue1,
//       onChanged: (String? newValue) {
//         setState(() {
//           dropdownValue1 = newValue!;
//         });
//       },
//       items: const [
//         'Australian Dollar',
//         '"United Arab Emirates Dirham',
//         'Afghan Afghani',
//         'Albanian Lek',
//         'Armenian Dram',
//         'Netherlands Antillean Guilder',
//         'Angolan Kwanza',
//         'Argentine Peso',
//         'Aruban Florin',
//         'Azerbaijani Manat',
//         'Bosnia-Herzegovina Convertible Mark',
//         'Barbadian Dollar',
//         'Bangladeshi Taka',
//         'Bulgarian Lev'
//       ],
//     );
//   }
// }

// class SearchBar extends StatefulWidget {
//   const SearchBar({Key? key}) : super(key: key);

//   @override
//   State<SearchBar> createState() => _SearchBarState();
// }

// class _SearchBarState extends State<SearchBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Search bar'),
//           actions: [
//             IconButton(
//                 onPressed: () {
//                   showSearch(context: context, delegate: Datasearch());
//                 },
//                 icon: Icon(Icons.search)),
//           ],
//         ),
//         body: Container(
//           child: Row(
//             children: [
//               Text('click here'),
//               Spacer(),
//               IconButton(
//                   onPressed: () {
//                     showSearch(context: context, delegate: Datasearch());
//                   },
//                   icon: Icon(Icons.ac_unit))
//             ],
//           ),
//         ));
//   }
// }

// class Datasearch extends SearchDelegate<String> {
//   final currency = ['Indian Rupee', 'Australian Dollar'];
//   final recentcurrrency = ['Indian Rupee', 'Australian Dollar'];
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//         onPressed: () {
//           close(context, query);
//         },
//         icon: Icon(Icons.clear),
//       )
//     ];
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back));
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     return Container(
//       child: Text(query),
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     final suggestonlist = query.isEmpty
//         ? recentcurrrency
//         : currency.where((p) => p.startsWith(query)).toList();
//     return ListView.builder(
//       itemCount: suggestonlist.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           onTap: () {
//             onChanged:
//             (String? newValue) {
//               var dropdownValue2 = newValue!;
//             };
//           },
//           leading: Text(suggestonlist[index]),
//         );
//       },
//     );
//   }
// }
