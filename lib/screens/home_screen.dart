import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site/providers/counter_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final String title = 'Counter';

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 110,
        centerTitle: false,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: false,
          titlePadding: EdgeInsets.all(19.0),
          title: Text(
            title,
            style: TextStyle(fontSize: 26.0),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You have pushed the button this many times:'),
              Text(
                '${counter.count}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counter.increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
