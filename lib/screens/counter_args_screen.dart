import 'package:flutter/material.dart';

/* Widgets Personalizados */
import 'package:counter_welcome_new_app/widgets/custom_floating_actions.dart';

class CounterArgsScreen extends StatefulWidget {
  const CounterArgsScreen({Key? key}) : super(key: key);

  @override
  State<CounterArgsScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterArgsScreen> {
  int counter = 10;

  // Métodos Que Se Pasan Como Argumentos Con Nombre, Para Mi counter_args_screen
  void increase() {
    counter++;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('CounterArgsScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Número De Clicks', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        resetFn: reset,
        decreaseFn: decrease,
      ),
    );
  }
}
