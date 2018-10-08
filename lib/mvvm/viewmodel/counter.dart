import 'package:flutter/widgets.dart';

import 'package:architecture_demos/mvvm/model/counter.dart';

abstract class CounterViewModel<T extends StatefulWidget> extends State<T> {
  int get counter => _model.counter;

  // static CounterModel _model; // static is global ,no static is local
  CounterModel _model; // static is global ,no static is local

  @override
  void initState() {
    super.initState();
    _model ??= CounterModel();
  }

  void addCounter() {
    _model.counter++;
    setState(() {});
  }
}
