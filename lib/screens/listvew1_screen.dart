import 'package:flutter/material.dart';

class ListVew1Screen extends StatelessWidget {
  const ListVew1Screen({super.key});
  final options = const ["megaman", 'metal', 'super', 'final'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('List View tipo 1')),
        body: ListView(
          children: [
            ...options
                .map(
                  (e) => ListTile(
                    leading: const Icon(Icons.access_time_filled),
                    title: Text(e),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                )
                .toList()
          ],
        ));
  }
}
