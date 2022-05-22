import 'dart:async';
import 'dart:core';

import 'package:currency_converter_test/models/allcurrency.dart';
import 'package:currency_converter_test/models/ratemodal.dart';
import 'package:currency_converter_test/utils/key.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

Future<void> main() async {
  // Simple check to see if we have Internet
  // ignore: avoid_print
  print('''The statement 'this machine is connected to the Internet' is: ''');
  final bool isConnected = await InternetConnectionChecker().hasConnection;
  // ignore: avoid_print
  print(
    isConnected.toString(),
  );
  // returns a bool

  // We can also get an enum instead of a bool
  // ignore: avoid_print
  print(
      'Current status: ${await InternetConnectionChecker().connectionStatus}');
  // Prints either InternetConnectionStatus.connected
  // or InternetConnectionStatus.disconnected

  // actively listen for status updates
  final StreamSubscription<InternetConnectionStatus> listener =
      InternetConnectionChecker().onStatusChange.listen(
    (InternetConnectionStatus status) {
      switch (status) {
        case InternetConnectionStatus.connected:
          // ignore: avoid_print
          print('Data connection is available.');
          break;
        case InternetConnectionStatus.disconnected:
          // ignore: avoid_print
          print('You are disconnected from the internet.');
          break;
      }
    },
  );

  // close listener after 30 seconds, so the program doesn't run forever
  await Future<void>.delayed(const Duration(seconds: 30));
  await listener.cancel();
}

Future<Map> fetchcurrecy() async {
  var response = await http.get(Uri.parse(
      'https://openexchangerates.org/api/currencies.json?app_id=' + key));

  final allcurrency = allCurrenciesFromJson(response.body);

  return allcurrency;
}

Future<RatesModel> fetchrates() async {
  // await Future.delayed(Duration(seconds: 4));
  var response = await http.get(Uri.parse(
      'https://openexchangerates.org/api/latest.json?app_id=e7f48fbef92d47b58777e4bbe38b77ff'));

  final result = ratesModelFromJson(response.body);

  return result;
}

String convertusd(Map exchangeRates, String usd, String currency) {
  String output =
      ((exchangeRates[currency] * double.parse(usd)).toStringAsFixed(2))
          .toString();
  return output;
}

String convertany(Map exchangeRates, String amount, String currencybase,
    String currencyfinal, Map currencies) {
  var reversed =
      Map.fromEntries(currencies.entries.map((e) => MapEntry(e.value, e.key)));
  String output = (double.parse(amount) /
          exchangeRates[reversed[currencybase]] *
          exchangeRates[reversed[currencyfinal]])
      .toStringAsFixed(2)
      .toString();
  return output;
}

// Map getTotalNameOfCurency(Map currencies) {
//   var reversed = Map.fromEntries(
//       currencies.entries.map((e) => MapEntry(e.key, '${e.key}-${e.value}')));
//   // currencies.forEach((k, v) => print('${k}: ${v}'));
//   // currencies.forEach((k, v) => data.add('${k}-${v}'));
//   return reversed;
// }
