import 'package:currency_converter_test/screens/drawer/drawer.dart';
import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 0),
                child: Text(
                  'PRIVACY POLICY',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
             Text(
                  'Crypto Price Converter allows the new generation investors to convert their virtual or digitalcurrency basically secured by cryptography in different nation currencies. It provides a singlecurrency basically secured by cryptography in different nation currencies. It provides a single'),
                  SizedBox(
                    height: 20,
                  ),
             Text(
                  'Crypto Price Converter allows the new generation investors to convert their virtual or digitalcurrency basically secured by cryptography in different nation currencies. It provides a singlecurrency basically secured by cryptography in different nation currencies. It provides a single'),
                  SizedBox(
                    height: 20,
                  ),
              Text(
                  'Crypto Price Converter allows the new generation investors to convert their virtual or digitalcurrency basically secured by cryptography in different nation currencies. It provides a singlecurrency basically secured by cryptography in different nation currencies. It provides a single'),
                  SizedBox(
                    height: 20,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
