import 'package:flutter/material.dart';

class ListVew2Screen extends StatelessWidget {
  const ListVew2Screen({super.key});
  final options = const ["megaman", 'metal', 'super', 'final'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View tipo 2'),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int i) => ListTile(
          title: Text(options[i]),
          trailing: const Icon(
            Icons.arrow_forward,
            color: Colors.indigo,
          ),
          leading: const Icon(
            Icons.access_time_rounded,
            color: Colors.indigo,
          ),
          onTap: () {
            print('HOLA $i');
          },
        ),
        itemCount: options.length,
        separatorBuilder: (_, __) => const Divider(height: 1.0),
      ),
    );
  }
}
