import 'package:demo_database/src/model/dummy_order.dart';
import 'package:http/http.dart' as http;

class DummyDatabaseOrder {
  final firebaseUrl =
      "https://hackaholic-a793a-default-rtdb.asia-southeast1.firebasedatabase.app/";

  // dummy data
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

  Future<void> giveOrder() async {
    getDummyOrder();
    try {
      var response = await http.post(Uri.parse("${firebaseUrl}orders.json"),
          body: dummyOrder!.toJson(),
          headers: <String, String>{
            'content-Type': 'application/json; charset=utf-8'
          });
      print(response.body);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> seeOrder() async {
    try {
      var response = await http.get(Uri.parse("${firebaseUrl}orders.json"));
      print(response.body);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> deleteOrder() async {
    try {
      var response = await http.delete(Uri.parse("${firebaseUrl}orders.json"));
      print(response.body);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> updateOrder() async {
    var updateDummyOrder = DummyOrder(
      id: "1",
      name: "DummyFood",
      image: imageUrl,
      price: "300",
      quantity: "3",
    );

    try {
      var response = await http.put(Uri.parse("${firebaseUrl}orders.json"),
          body: updateDummyOrder.toJson(),
          headers: <String, String>{
            'content-Type': 'application/json; charset=utf-8'
          });
      print(response.body);
    } catch (e) {
      print(e.toString());
    }
  }
}

void main(List<String> args) async {
  final dummyDatabaseOrder = DummyDatabaseOrder();

  // first i am creating an order
  await dummyDatabaseOrder.giveOrder();

  // then i will see my order

  await dummyDatabaseOrder.seeOrder();

  // then i will update my order

  await dummyDatabaseOrder.updateOrder();

  // then i am deleting an order

  await dummyDatabaseOrder.deleteOrder();
}
