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

                // Landscape is where we're demonstrating how to use ScopedModel. ***** Notice that the ScopedModel IS an ancestor of this widget tree, since this tree was called from the tree which had ScopedModel at its base.

                // Here is also we're we're going to pass the UIModule the appropriate information for it to display in Portrait orientation.
                child: ScopedModelDescendant<CounterModel>(
                    builder: (context, child, model) =>
                        UiModule(
                            counter: model.counter,
                            orientation: 'Landscape',
                            stateMaintStrategy: 'Scoped Model',
                        )
                ),
            ),

            // We're also using the Descendant as the base of the FAB, allowing us to call the increment function within the counterModel instance we created in main.dart
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
                                color: Colors.green,
                                child: Icon(Icons.add),
                            ),
                        ),
                    ),
            ),
        );
    }
}

