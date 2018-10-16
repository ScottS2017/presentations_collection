import 'package:beyond_hello_world/widgets/ui_module.dart';
import 'package:flutter/material.dart';

class PortraitPage extends StatefulWidget {
    PortraitPage({Key key, this.title}) : super(key: key);
    final String title;

    @override
    _PortraitPageState createState() => _PortraitPageState();
}

class _PortraitPageState extends State<PortraitPage> {

    // The fact that this is static and outside the build() is what allows this int to persist
    static int _counter = 0;

    // Here we're looking at setState. The easier way to read this is to add the word "with" after setState. So, in this case, it would read, "Set state WITH an incremented counter."
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

                // Pass the UIModule the appropriate information for it to display in Portrait orientation.
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

                // Here we use the FAB to trigger setState within the PortraitPage tree. Notice how this is all self contained, never reaching outside of it's own class. Whereas ScopedModel can reach anywhere within your app that you put a ScopedModelDescendant because the app has ScopedModel at its base.
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