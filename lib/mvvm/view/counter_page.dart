import 'package:flutter/material.dart';
import 'package:architecture_demos/mvvm/viewmodel/counter.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> with CounterViewModel<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MVVM demos'),
        actions: <Widget>[
          FlatButton(
            child: Text('next'),
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => CounterPage())),
          ),
        ],
      ),
      body: Center(
        child: Text('current counter = $counter'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: addCounter,
      ),
    );
  }
}
