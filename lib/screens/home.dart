import 'package:currency_converter_test/components/Any_ToAny.dart';
import 'package:currency_converter_test/function/fetchcuurecy.dart';
import 'package:currency_converter_test/models/ratemodal.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<Map> allcurrency;
  late Future<RatesModel> result;
  @override
  void initState() {
    super.initState();
    result = fetchrates();
    allcurrency = fetchcurrecy();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'currency converter',
          style: GoogleFonts.lato(),
        ),
        toolbarHeight: 70.0,
      ),
      // drawer: const MyDrawer(),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
              child: FutureBuilder<RatesModel>(
            future: result,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return // Container(child: Lottie.asset('assets/images/hello.json'));
                    SizedBox(
                        height: MediaQuery.of(context).size.height / 1.3,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ));
              }
              return Center(
                child: FutureBuilder<Map>(
                  future: allcurrency,
                  builder: (context, currsnapshot) {
                    if (currsnapshot.connectionState ==
                        ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          // UsdToAny(
                          //   currency: currsnapshot.data!,
                          //   rates: snapshot.data!.rates,
                          // ),
                          AnyToAny(
                            rates: snapshot.data!.rates,
                            currencies: currsnapshot.data!,
                          ),

                          const Text(
                            'WHY THIS ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'In the first half of 2020, anarray of Indian crypto exchanges said business was booming for the BTC trading pair, with volumes stretching into tens of millions of dollar If youre looking to convert your rupees into Bitcoin, youll want to get the best value for money. Its worth looking at the rates offered by different exchanges, as well as the fees that they charge for executing a transaction on your behalf. Youd be surprised at the difference from company to company.',
                              style: GoogleFonts.lato(),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          )),
        ),
      ),
    );
  }
}
