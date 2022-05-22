import 'dart:async';

import 'package:currency_converter_test/screens/crypto.dart';
import 'package:currency_converter_test/screens/drawer/about_us.dart';
import 'package:currency_converter_test/screens/drawer/privacy.dart';
import 'package:currency_converter_test/screens/home.dart';
import 'package:currency_converter_test/screens/news.dart';

import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

Future<void> hello() async {
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

class MyAppState extends State<MyApp> {
  int _selectedpage = 0;
  final _pageoption = [
    const Home(),
    const News(),
    const CryptoCurrency(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "currency converter",
        theme: ThemeData.dark(),
        home: Scaffold(
            body: _pageoption[_selectedpage],
            bottomNavigationBar: FloatingNavbar(
                onTap: (int index) {
                  setState(() {
                    _selectedpage = index;
                  });
                },
                currentIndex: _selectedpage,
                items: [
                  FloatingNavbarItem(icon: Icons.home, title: 'Home'),
                  FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
                  FloatingNavbarItem(icon: Icons.book, title: 'Chats'),
                ]

                // bottomNavigationBar: FancyBottomNavigation(
                //   tabs: [
                //     TabData(iconData: Icons.home, title: "Home"),
                //     TabData(iconData: Icons.search, title: "Search"),
                //     TabData(iconData: Icons.shopping_cart, title: "Basket")
                //   ],
                //   onTabChangedListener: (position) {
                //     setState(() {
                //       currentPage = position;
                //     });
                //   },
                // )
                )),
        routes: {
          "/home": (context) => const Home(),
          "/about": (context) => const AboutUs(),
          "/privacy": (context) => const Privacy(),
          "/news": (context) => const News(),

          // "/search": (context) => const SearchBar(),
        });
  }
}
// ThemeData(
          
//             textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
//             scaffoldBackgroundColor: Colors.black87,
//             appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
//             primaryColor: Colors.red),