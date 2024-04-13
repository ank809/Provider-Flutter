import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  ValueNotifier<int> _valueNotifier = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App With Stateless Widget'),
      ),
      body: Center(
          child: ValueListenableBuilder(
        valueListenable: _valueNotifier,
        builder: (context, value, child) {
          return Text(_valueNotifier.value.toString());
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _valueNotifier.value++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
