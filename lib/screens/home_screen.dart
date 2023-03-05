import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(menuOptions[index].name),
                leading: Icon(
                  menuOptions[index].icon,
                  // color: Theme.of(context).primaryColor,
                  color: AppTheme.primary,
                ),
                onTap: () {
                  // final route = MaterialPageRoute(
                  //   builder: (context) => ListVew1Screen(),
                  // );
                  // Navigator.push(context, route);
                  Navigator.pushNamed(context, menuOptions[index].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(
                height: 1,
              ),
          itemCount: menuOptions.length),
    );
  }
}
