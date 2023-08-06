import 'package:flutter/material.dart';

class Clicker extends StatefulWidget {
  const Clicker({super.key});

  @override
  State<Clicker> createState() => _ClickerState();
}

class _ClickerState extends State<Clicker> {
  int counter = 0;

  @override
  initState() {
    super.initState();
    setState(() {
      counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    void click() {
      setState(() {
        ++counter;
      });
    }

    void restart() {
      setState(() {
        counter = 0;
      });
    }

    const colors = {
      0: Colors.white,
      1: Colors.yellow,
      2: Colors.orange,
      3: Colors.red,
      4: Colors.purple,
      5: Color.fromRGBO(71, 67, 137, 1),
      6: Colors.blue,
      7: Color.fromRGBO(0, 128, 128, 1),
      8: Colors.green,
      9: Color.fromRGBO(189, 236, 182, 1),
    };
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'This is my 1st App!',
          style: TextStyle(
              color: colors[counter % 10],
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$counter',
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: click,
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      minimumSize:
                          MaterialStateProperty.all(const Size(120, 60))),
                  child: const Text(
                    'Click',
                    style: TextStyle(fontSize: 20),
                  )),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                  onPressed: counter == 0 ? null : restart,
                  style: ButtonStyle(
                      backgroundColor: counter == 0
                          ? MaterialStateProperty.all<Color>(
                              Color.fromRGBO(255, 0, 0, 0.5))
                          : MaterialStateProperty.all<Color>(Colors.red),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      minimumSize:
                          MaterialStateProperty.all(const Size(120, 60))),
                  child: const Text(
                    'Restart',
                    style: TextStyle(fontSize: 20),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
