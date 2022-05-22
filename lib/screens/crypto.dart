import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CryptoCurrency extends StatefulWidget {
  const CryptoCurrency({Key? key}) : super(key: key);

  @override
  State<CryptoCurrency> createState() => _CryptoCurrencyState();
}

class _CryptoCurrencyState extends State<CryptoCurrency> {
  @override
  void initState() {
    super.initState();
    loaddata();
  }

  loaddata() async {
    var loaddata = await rootBundle.loadString('assets/files/CryptoRates.json');
    var decodedata = jsonDecode(loaddata) as Map;
    final data = decodedata["rates"] as Map;
    for (final name in data.keys) {
      final value = data[name];
      print('$name,$value');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
