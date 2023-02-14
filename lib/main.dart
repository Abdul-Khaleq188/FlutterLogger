import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(FlutterLogger());
}

class FlutterLogger extends StatelessWidget {
  final logger = Logger();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(12),
                width: 160,
                height: 80,
                child: ElevatedButton(
                  onPressed: () {
                    logger.d('Debug has finished');
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey)),
                  child: const Text(
                    'Debug',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(12),
                width: 160,
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      logger.i('Info message');
                    },
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.yellow)),
                    child: const Text(
                      'Info',
                      style: TextStyle(fontSize: 22),
                    )),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(12),
                width: 160,
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      logger.w('Warning message');
                    },
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.orange)),
                    child: const Text(
                      'Warning',
                      style: TextStyle(fontSize: 22),
                    )),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(12),
                width: 160,
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      logger.e('Error!');
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                    child: const Text('Error', style: TextStyle(fontSize: 22))),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(12),
                width: 160,
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      logger.wtf('What a fatal failure !');
                    },
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.red[900])),
                    child: const Text(
                      'WTF',
                      style: TextStyle(fontSize: 24),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
