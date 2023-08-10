import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sursa_terminal/utils/app_controller.dart';

import 'scan.dart';

void main() async {
  //
  WidgetsFlutterBinding.ensureInitialized();
  //
  await GetStorage.init();
  //
  AppController loginController = Get.put(AppController());
  //
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SURSA',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SursaTerminal(),
    );
  }
}

class SursaTerminal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: QRViewExample(),
          ),
          Container(
            height: Get.size.height / 8,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/Coat_of_arms_of_the_Democratic_Republic_of_the_Congo.svg.png",
                  width: 70,
                  height: 70,
                ),
                Image.asset(
                  "assets/LOGO SURSA TTRANSPARENT.png",
                  width: 70,
                  height: 70,
                ),
                Image.asset(
                  "assets/logo_MIN SANTE.png",
                  width: 170,
                  height: 170,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
