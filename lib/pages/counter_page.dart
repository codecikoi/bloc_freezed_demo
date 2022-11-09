import 'package:bloc_freezed/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bloc + freezed'),
        centerTitle: true,
        backgroundColor: Colors.indigo[300],
      ),
      body: Center(
        child: _CounterText(),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.black54,
            onPressed: () {
              context.read<CounterBloc>().add(
                    CounterEvent.increment(),
                  );
            },
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(height: 20.0),
          FloatingActionButton(
            backgroundColor: Colors.black54,
            onPressed: () {
              context.read<CounterBloc>().add(
                    CounterEvent.reset(),
                  );
            },
            tooltip: 'Reset',
            child: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}

class _CounterText extends StatelessWidget {
  const _CounterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CounterBloc>().state;

    return state.when(
      initial: () => FlutterLogo(size: 120.0),
      loading: () => CircularProgressIndicator(),
      loaded: (counter) => Text(
        '$counter',
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}
