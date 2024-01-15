import 'package:count_app/numberprovider.dart';
import 'package:count_app/second.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, numberListProvider, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Counter App Home Page'),
        ),
        body: Column(
          children: [
             Center(
              child: Text(
                numberListProvider.number.last.toString(),
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20.0,),
            Expanded(
              child: ListView.builder(
                itemCount: numberListProvider.number.length,
                itemBuilder: (context, index) {
                  return  Center(
                    child: Text(
                      numberListProvider.number[index].toString(),
                      style: TextStyle(fontSize: 20.0),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              child: Text('Second Page'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numberListProvider.add();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
