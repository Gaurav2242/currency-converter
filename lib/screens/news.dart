import 'dart:convert';
import 'dart:core';

import 'package:currency_converter_test/models/newsmodal.dart';
import 'package:currency_converter_test/screens/NewsWidget.dart';
import 'package:currency_converter_test/screens/news_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  void initState() {
    super.initState();
    loaddata();
  }

  Future<List<Item>> loaddata() async {
    var loaddata = await rootBundle.loadString("assets/files/news.json");

    var decodeddata = jsonDecode(loaddata);
    var productdata = decodeddata["products"];

    return NewsModal.items =
        List.from(productdata).map<Item>((item) => Item.fromMap(item)).toList();
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: FutureBuilder(
              future: loaddata(),
              builder: (context, data) {
                return Column(
                  children: [
                    Text(
                      "NEWS",
                      style: GoogleFonts.breeSerif(fontSize: 27),
                    ),
                    (NewsModal.items.isNotEmpty)
                        ? ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: NewsModal.items.length,
                            itemBuilder: (context, index) {
                              final gaurav = NewsModal.items[index];
                              return InkWell(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Newsdetail(news: gaurav))),
                                  child: NewsWidget(item: gaurav));
                            },
                          )
                        : const Center(
                            child: CircularProgressIndicator(),
                          ),
                  ],
                );
              })),
    );
  }
}
