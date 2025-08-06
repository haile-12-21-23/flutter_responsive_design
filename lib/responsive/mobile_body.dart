import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(height: 200, color: Colors.deepPurple[400]),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(8.0),
                  color: Colors.deepPurple[300],
                  height: 120,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
