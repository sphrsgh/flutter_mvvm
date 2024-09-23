import 'package:flutter/material.dart';
import 'package:flutter_mvvm/viewmodels/counter_viewmodel.dart';
import 'package:flutter_mvvm/views/counter_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final counterViewModel =
      CounterViewModel(); // add ViewModel here to call one time

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter MVVM Counter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: CounterView(
        viewModel: counterViewModel, // send ViewModel to View
      ),
    );
  }
}
