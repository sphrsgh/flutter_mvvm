import 'package:flutter_mvvm/models/counter_model.dart';
import 'package:get/get.dart';

class CounterViewModel extends GetxController {

  late final CounterModel _model;

  // constructor
  CounterViewModel() {
    _model = CounterModel();
  }


  // getter
  CounterModel get model => _model; 

  void increment() {
    model.increment();
    update();
  }
}
