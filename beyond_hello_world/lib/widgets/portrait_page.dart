import 'package:beyond_hello_world/widgets/ui_module.dart';
import 'package:flutter/material.dart';

class PortraitPage extends StatefulWidget {
    PortraitPage({Key key, this.title}) : super(key: key);
    final String title;

    @override
    _PortraitPageState createState() => _PortraitPageState();
}

class _PortraitPageState extends State<PortraitPage> {
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
                title: Text(widget.title),
            ),
            body: Center(
                child: UiModule(
                    counter: _counter,
                    orientation: 'Portrait',
                    stateMaintStrategy: 'setState()',
                ),
            ),

            /// Ye old FAB... need I say more?
            floatingActionButton:
            FloatingActionButton(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                ),
                onPressed: _incrementCounter,
                tooltip: "Use Set State",
                child: Center(
                    child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: Icon(Icons.add),
                    ),
                ),
            ),
        );
    }
}