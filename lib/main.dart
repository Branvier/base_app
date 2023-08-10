import 'package:asp/asp.dart';
import 'package:base_app/app/app_module.dart';
import 'package:base_app/app/app_widget.dart';
import 'package:base_app/app/data/sources/box/hive_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() async {
  runApp(const Splash());

  await Future.wait([
    HiveBox.init(),
  ]);

  runApp(
      RxRoot(child: ModularApp(module: AppModule(), child: const AppWidget())));
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
