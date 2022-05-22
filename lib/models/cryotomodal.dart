// To parse this JSON data, do
//
//     final crypto = cryptoFromJson(jsonString);

import 'dart:convert';

Crypto cryptoFromJson(String str) => Crypto.fromJson(json.decode(str));

String cryptoToJson(Crypto data) => json.encode(data.toJson());

class Crypto {
    Crypto({
        required this.success,
        required this.crypto,
    });

    bool success;
    Map<String, CryptoValue> crypto;

    factory Crypto.fromJson(Map<String, dynamic> json) => Crypto(
        success: json["success"],
        crypto: Map.from(json["crypto"]).map((k, v) => MapEntry<String, CryptoValue>(k, CryptoValue.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "crypto": Map.from(crypto).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class CryptoValue {
    CryptoValue({
        required this.symbol,
        required this.name,
        required this.nameFull,
        required this.maxSupply,
        required this.iconUrl,
    });

    String symbol;
    String name;
    String nameFull;
    int maxSupply;
    String iconUrl;

    factory CryptoValue.fromJson(Map<String, dynamic> json) => CryptoValue(
        symbol: json["symbol"],
        name: json["name"],
        nameFull: json["name_full"],
        maxSupply: json["max_supply"],
        iconUrl: json["icon_url"],
    );

    Map<String, dynamic> toJson() => {
        "symbol": symbol,
        "name": name,
        "name_full": nameFull,
        "max_supply": maxSupply,
        "icon_url": iconUrl,
    };
}
