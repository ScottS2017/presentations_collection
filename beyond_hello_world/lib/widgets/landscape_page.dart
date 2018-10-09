import 'package:beyond_hello_world/model/counter_model.dart';
import 'package:beyond_hello_world/widgets/ui_module.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class LandscapePage extends StatelessWidget {

    String title;

    LandscapePage({
        Key key,
        @required this.title,
    }) : super (key: key);

    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text(title),
            ),
            body: Center(
                child: ScopedModelDescendant<CounterModel>(
                    builder: (context, child, model) =>
                        UiModule(
                            counter: model.counter,
                            orientation: 'Landscape',
                            stateMaintStrategy: 'Scoped Model',
                        )
                ),
            ),
            floatingActionButton: ScopedModelDescendant<CounterModel>(
                builder: (context, child, counterModel) =>
                    FloatingActionButton(
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                        ),
                        onPressed: () => counterModel.increment(),
                        tooltip: "Use Set State",
                        child: Center(
                            child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                child: Icon(Icons.add),
                            ),
                        ),
                    ),
            ),
        );
    }
}

