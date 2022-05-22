import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                    child: Text(
                      'ABOUT US',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                      'Crypto Price Converter allows the new generation investors to convert their virtual or digitalcurrency basically secured by cryptography in different nation currencies. It provides a singlecurrency basically secured by cryptography in different nation currencies. It provides a single'),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'OUR MOTIVE',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      'Crypto Price Converter allows the new generation investors to convert their virtual or digitalcurrency basically secured by cryptography in different nation currencies. It provides a singlecurrency basically secured by cryptography in different nation currencies. It provides a single'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                child: Column(
                  children: [
                    const Text(
                      'OUR TEAM',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/images/green logo.png'),
                      ),
                    ),
                    const Text('GAURAV SAINI',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold)),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('assets/images/green logo.png'),
                          ),
                        ),
                        const Text('hello')
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// [
//           Flexible(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Flexible(
//                   child: Column(
//                     children: const [
//                       Text('Gaurav'),
//                       Text('hello klsi r dfu'),
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   child: Column(
//                     children: [
//                       Text('Gaurav'),
//                       Text('hello klsi r dfudf'),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],









// body: GridView.count(
      //   crossAxisCount: 2,

      //   children: [
      //     Column(
      //       children: [
      //        Image.asset('assets/images/green logo.png'),
      //         Text('item1')
      //       ],
      //     ),
      //      Column(
      //       children: [
      //          Image.asset('assets/images/green logo.png'),
      //         Text('item2')
      //       ],
      //     )
      //   ]
      // ),