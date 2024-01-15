import 'package:count_app/numberprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
  builder:(context, numberListProvider, child) => Scaffold(
        appBar: AppBar(title: const Text('Counter App Second Page' ),),
        body: Column(
          children: [
            Center(child:  Text(numberListProvider.number.last.toString(), style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),)),
           const SizedBox(height: 20.0,),
            Expanded(
              child: ListView.builder(
                itemCount: numberListProvider.number.length,
                itemBuilder: (context, index){
                  return  Center(child:  Text(numberListProvider.number[index].toString(), style: TextStyle(fontSize: 20.0),));
                }),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          numberListProvider.add();
        }, 
        child: Icon(Icons.add),),
      ),
    );
  }
}