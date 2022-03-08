import 'package:dhaga_flutter/responsiveness/breakpoints.dart';
import 'package:dhaga_flutter/responsiveness/max_width_container.dart';
import 'package:dhaga_flutter/responsiveness/responsive_layout.dart';
import 'package:dhaga_flutter/routes.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home/layout.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      const ProviderScope(child: MyApp())

  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Golden Dhaga',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) =>
          AppRouter.onGenerateRoute(settings),
      home: const MyHomePage(),
    );
  }
}
