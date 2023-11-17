import 'package:flutter/material.dart';
import 'package:flutter_youtube/core/notifiers.dart';
import 'package:flutter_youtube/widgets/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: isDarkModeNotifier,
        builder: (context, isDarkMode, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Colors.deepPurple,
                  brightness: isDarkMode ? Brightness.dark : Brightness.light),
              useMaterial3: true,
            ),
            home: const WidgetTree(),
          );
        });
  }
}
