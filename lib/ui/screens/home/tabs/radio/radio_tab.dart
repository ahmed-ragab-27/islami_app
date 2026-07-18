import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.withOpacity(0.5),
      child: const Center(child: Text("Radio Tab")),
    );
  }
}
