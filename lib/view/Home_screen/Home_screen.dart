import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Container(
                child: TextField(
                  controller: firstController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "1st", border: OutlineInputBorder()),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Container(
                child: TextField(
                  controller: secondController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "2nd", border: OutlineInputBorder()),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      double a = double.parse(firstController.text);
                      double b = double.parse(secondController.text);
                      setState(() {
                        result = a + b;
                      });
                    },
                    child: Text("Add")),
                ElevatedButton(
                    onPressed: () {
                      double a = double.parse(firstController.text);
                      double b = double.parse(secondController.text);
                      setState(() {
                        result = a - b;
                      });
                    },
                    child: Text("Substrate")),
                ElevatedButton(
                    onPressed: () {
                      double a = double.parse(firstController.text);
                      double b = double.parse(secondController.text);
                      setState(() {
                        result = a * b;
                      });
                    },
                    child: Text("Multiple")),
                ElevatedButton(
                    onPressed: () {
                      double a = double.parse(firstController.text);
                      double b = double.parse(secondController.text);
                      setState(() {
                        result = a / b;
                      });
                    },
                    child: Text("Divider"))
              ],
            ),
            ListTile(
              leading: Text(
                "Result: $result",
                style: TextStyle(fontSize: 25),
              ),
              // title: Text(result, style: TextStyle(fontSize: 25)),
            )
          ],
        ),
      ),
    );
  }
}
