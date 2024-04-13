import 'package:flutter/material.dart';
import 'package:widget_tooltip/widget_tooltip.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            WidgetTooltip(
              message: Container(
                  width: 200,
                  height: 200,
                  color: Colors.deepPurple,
                  child: Text('asdf', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white))),
              axis: Axis.horizontal,
              child: const Text('You have pushed the button this many times:'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                WidgetTooltip(
                  triggerMode: WidgetTooltipTriggerMode.tap,
                  dismissMode: WidgetTooltipDismissMode.tapAnyWhere,
                  message: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('asdf', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white)),
                      const FlutterLogo(),
                      Container(
                        width: 40,
                        height: 40,
                        color: Colors.deepPurple,
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(24),
                  axis: Axis.vertical,
                  child: const Text('tap any where'),
                ),
                WidgetTooltip(
                  triggerMode: WidgetTooltipTriggerMode.tap,
                  dismissMode: WidgetTooltipDismissMode.tapInside,
                  message: Container(
                      width: 200,
                      height: 200,
                      color: Colors.deepPurple,
                      child: Text('asdf', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white))),
                  padding: const EdgeInsets.all(48),
                  child: const Text('tap inside'),
                ),
              ],
            ),
            WidgetTooltip(
              triggerMode: WidgetTooltipTriggerMode.tap,
              dismissMode: WidgetTooltipDismissMode.tapOutside,
              message: Text('asdf', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white)),
              child: const Text('tap outside'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
