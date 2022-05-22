import 'package:currency_converter_test/models/newsmodal.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Newsdetail extends StatelessWidget {
  final Item news;

  const Newsdetail({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: const Color.fromRGBO(245, 245, 245, 1),
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(news.image)),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  news.title,
                  style:
                      GoogleFonts.breeSerif(fontSize: 30, color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  news.description,
                  style: GoogleFonts.roboto(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(news.content,
                    style: GoogleFonts.poppins(
                        letterSpacing: 1, fontSize: 20, color: Colors.black)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
