import 'package:flutter/material.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.withOpacity(0.5),
      child: const Center(child: Text("Time Tab")),
    );
  }
}
