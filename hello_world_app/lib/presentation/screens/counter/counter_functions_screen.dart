import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Counter Fuctions")),
          actions: [
            IconButton(
                onPressed: () {
                  clickCounter = 0;
                  setState(() {});
                },
                icon: const Icon(Icons.refresh_rounded)),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(
                clickCounter == 1 ? 'click' : 'clicks',
                style: const TextStyle(
                  fontSize: 25,
                ),
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CutomButton(
              icon: Icons.refresh_rounded,
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CutomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                clickCounter--;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CutomButton(
              icon: Icons.plus_one,
              onPressed: () {
                clickCounter++;
                setState(() {});
              },
            ),
          ],
        ));
  }
}

class CutomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CutomButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 10,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
