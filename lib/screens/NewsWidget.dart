
import 'package:currency_converter_test/models/newsmodal.dart';
import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  final Item item;

  const NewsWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size devicesize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: const Color.fromRGBO(124, 252, 0, 0.1),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.network(
                        item.image,
                        width: devicesize.width / 3.2,
                        height: 100,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 10),
                        child: Row(
                          children: [
                            Expanded(child: Text(item.pubdata)),
                            Text(item.language.toUpperCase()),
                          ],
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
