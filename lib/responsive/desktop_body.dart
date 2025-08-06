import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Row(
        children: [
          // First Column
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Container(color: Colors.deepPurple[400]),
                ),

                // FIX: Ensure this Expanded wraps a scrollable ListView
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(8.0),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 8.0),
                        color: Colors.deepPurple[300],
                        height: 120,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // Second Column
          Container(width: 200, color: Colors.deepPurple[300]),
        ],
      ),
    );
  }
}
