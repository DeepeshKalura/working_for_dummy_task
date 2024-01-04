import 'dart:convert';

import 'package:demo_database/src/model/dummy_order.dart';
import 'package:http/http.dart' as http;

class DummyDatabaseOrder {
  final firebaseUrl =
      "https://hackaholic-a793a-default-rtdb.asia-southeast1.firebasedatabase.app/";
  String imageUrl =
      "https://images.pexels.com/photos/14866387/pexels-photo-14866387.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";

  DummyOrder? dummyOrder;

  void getDummyOrder() {
    dummyOrder = DummyOrder(
      id: "2",
      name: "DummyLunch",
      image: imageUrl,
      price: "300",
      quantity: "4",
    );
  }

  Future<String> putorder() async {
    getDummyOrder();
    var result = "unscussfull";
    try {
      var response = http.post(Uri.parse("${firebaseUrl}orders.json"),
          body: dummyOrder!.toJson(),
          headers: <String, String>{
            'content-Type': 'application/json; charset=utf-8'
          });
      print("Sending response to the internet");
      var res = await response;
      if (res.statusCode == 200 ||
          res.statusCode == 201 ||
          res.statusCode == 202) {
        result = "Scussessfull";
      } else {
        result = res.reasonPhrase ?? "error here";
      }
    } catch (e) {
      result = e.toString();
      print(e.toString());
    }
    return result;
  }
}

void main(List<String> args) async {
  final dummyDatabaseOrder = DummyDatabaseOrder();

  print(await dummyDatabaseOrder.putorder());
}
