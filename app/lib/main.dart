import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'logging.dart';

void main() {
  Logger.level = Level.verbose;
  runApp(const FlixTrackr());
}

class FlixTrackr extends StatelessWidget {
  const FlixTrackr({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlixTracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LandingPage(title: 'FlixTracker Home Page'),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key, required this.title});

  final String title;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    var logger = getLogger();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Text(
        'Welcome to FlixTrackr, your app to track tv shows and movies.',
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => logger.d("Add called."),
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
