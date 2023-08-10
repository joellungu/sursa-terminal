import 'dart:convert';
import 'package:dio/dio.dart' as d;
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'requete.dart';

class AppController extends GetxController {
  //
  Requete requete = Requete();
  //
  var box = GetStorage();
  //

  //api/user/get?id=xxxxxxxx
  Future<void> scanner(String id) async {
    print(
        "rep:  https://www.sky-workspace.com/sursa/api/?_c=form&_a=get&id=$id");
    d.Response rep = await requete.getE("api/?_c=form&_a=get&id=$id");
    if (rep.statusCode == 200 || rep.statusCode == 201) {
      print("rep: ${rep.data}");

      //box.write("user", rep.body);
      Get.back();
      //Get.snackbar("Succès", "La mise à jour éffectué");
      //Get.to(Details(jsonDecode(rep.data)));
    } else {
      print("rep: ${rep.data}");
      //Get.back();
      Get.snackbar("Erreur", "Un problème lors de la suppression");
    }
  }
}
