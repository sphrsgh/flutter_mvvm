import 'package:flutter/material.dart';
import 'package:flutter_mvvm/Features/Counter/counter_viewmodel.dart';
import 'package:get/get.dart';

class CounterView extends StatelessWidget {
  final CounterViewModel viewModel; // add ViewModel in view
  const CounterView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter MVVM Counter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GetBuilder(
              init: viewModel,
              builder: (vm) => Text(
                '${vm.model.count}', // get count from ViewModel
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.increment, // call increment from ViewModel
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
