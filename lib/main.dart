// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

// ignore: must_be_immutable
class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  void addOnePoint() {
    print('add one point');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Points Counter'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 42,
                          ),
                        ),
                        Text(
                          '$teamAPoints',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamAPoints++;
                            });
                            print(teamAPoints);
                          },
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamAPoints += 2;
                            });
                          },
                          child: const Text(
                            'Add 2 Point',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamAPoints += 3;
                            });
                          },
                          child: const Text(
                            'Add 3 Point',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 550,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 42,
                          ),
                        ),
                        Text(
                          '$teamBPoints',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamBPoints++;
                            });
                          },
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamBPoints += 2;
                            });
                          },
                          child: const Text(
                            'Add 2 Point',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamBPoints += 3;
                            });
                          },
                          child: const Text(
                            'Add 3 Point',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 50)),
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(fontSize: 25),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
