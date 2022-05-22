import 'package:flutter/foundation.dart';

class Cryptoratesmodal {
  final String success;
  final String terms;
  final String privacy;
  final String timestamp;
  final String target;
  final Map<String, double> rates;

  Cryptoratesmodal(
      {required this.success,
      required this.terms,
      required this.privacy,
      required this.timestamp,
      required this.target,
      required this.rates});

  factory Cryptoratesmodal.fromjson(Map<String, dynamic> json) =>
      Cryptoratesmodal(
        privacy: json['privacy'],
        rates: Map.from(json["rates"])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        success: json['success'],
        target: json['target'],
        terms: json['terms'],
        timestamp: json['timestamp'],
      );
}
