import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

// Start by creating a class that holds some view the app's state. In
// our example, we'll have a simple counter that starts at 0 can be
// incremented.
//
// Note: It must extend from Model.
class CounterModel extends Model {
    int _counterLandscape = 0;

    int get counter => _counterLandscape;

    void increment() {
        // First, increment the counter
        _counterLandscape++;

        // Then notify all the listeners.
        notifyListeners();
    }
}

// Create our App, which will provide the `CounterModel` to
// all children that require it!
class CounterApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        // First, create a `ScopedModel` widget. This will provide
        // the `model` to the children that request it.
        return new ScopedModel<CounterModel>(
            model: new CounterModel(),
            child: new Column(children: [
                // Create a ScopedModelDescendant. This widget will get the
                // CounterModel from the nearest ScopedModel<CounterModel>.
                // It will hand that model to our builder method, and rebuild
                // any time the CounterModel changes (i.e. after we
                // `notifyListeners` in the Model).
                new ScopedModelDescendant<CounterModel>(
                    builder: (context, child, model) => new Text('${model.counter}'),
                ),
                new Text("Another widget that doesn't depend on the CounterModel")
            ])
        );
    }
}