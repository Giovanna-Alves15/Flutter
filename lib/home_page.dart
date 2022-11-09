import 'package:flutter/material.dart';
import 'package:pulse_button/pulse_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var temperatura = 0.1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Olha só que bonito'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PulseButton(temperatura * 100),
            const SizedBox(
              height: 40,
            ),
            Slider(
                value: temperatura,
                onChanged: (value) {
                  setState(() {
                    temperatura = value;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
