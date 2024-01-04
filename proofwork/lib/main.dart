import 'package:flutter/material.dart';
import 'package:two_variable/two_variable.dart';
import 'package:two_variable_operations/two_variable_operations.dart';
import 'package:demo_database/demo_database.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _numberOnecontroller = TextEditingController();
  final _numberTwocontroller = TextEditingController();
  final twoVariable = TwoVariable();

  var resultOne = 0;
  var resultTwo = "0";

  @override
  void dispose() {
    super.dispose();
    _numberOnecontroller.dispose();
    _numberTwocontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _numberOnecontroller,
          ),
          TextField(
            controller: _numberTwocontroller,
          ),
          const Text("For Two variable Operations"),
          ElevatedButton(
            onPressed: () {
              setState(() {
                resultOne = twoVariableOperations(
                    int.parse(_numberOnecontroller.text),
                    int.parse(_numberTwocontroller.text));
              });
            },
            child: const Text("For Two Variable Operations"),
          ),
          Center(
            child: Text(
              resultOne.toString(),
              style: const TextStyle(fontSize: 30),
            ),
          ),
          const Text("For Two variable "),
          ElevatedButton(
            onPressed: () {
              setState(() {
                resultTwo = twoVariable.operationsOnTwoNumber(
                  numberOne: int.parse(_numberOnecontroller.text),
                  numberTwo: int.parse(_numberTwocontroller.text),
                );
              });
            },
            child: const Text("For Two Variable Operations"),
          ),
          Center(
            child: Text(
              resultTwo,
              style: const TextStyle(fontSize: 30),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DummyOrderDatabaseScreen(),
                ),
              );
            },
            child: const Text("New Screen"),
          ),
        ],
      ),
    );
  }
}

class DummyOrderDatabaseScreen extends StatefulWidget {
  const DummyOrderDatabaseScreen({super.key});

  @override
  State<DummyOrderDatabaseScreen> createState() =>
      _DummyOrderDatabaseScreenState();
}

class _DummyOrderDatabaseScreenState extends State<DummyOrderDatabaseScreen> {
  final dummyDatabaseOrder = DummyDatabaseOrder();
  final _numberOnecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _numberOnecontroller,
          ),
          ElevatedButton(
            child: const Text("Enter the Number and hit here"),
            onPressed: () {
              switch (_numberOnecontroller.text) {
                case "1":
                  dummyDatabaseOrder.giveOrder();
                  break;
                case "2":
                  dummyDatabaseOrder.updateOrder();
                  break;
                case "3":
                  dummyDatabaseOrder.deleteOrder();
                  break;
                case "4":
                  dummyDatabaseOrder.seeOrder();
                  break;
                default:
                  print("Wrong Input");
              }
            },
          )
        ],
      ),
    );
  }
}
