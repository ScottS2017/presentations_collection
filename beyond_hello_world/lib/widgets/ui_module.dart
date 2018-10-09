import 'package:flutter/material.dart';

class UiModule extends StatelessWidget {
    const UiModule({
        Key key,
        @required this.counter,
        @required this.orientation,
        @required this.stateMaintStrategy,
    }) : super(key: key);

    final int counter;
    final String orientation;
    final String stateMaintStrategy;

    @override
    Widget build(BuildContext context) {
        return Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Center(
                        child: Column(
                            children: <Widget>[
                                Text('We\'re in $orientation mode\n and using $stateMaintStrategy',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0),
                                ),
                                SizedBox(
                                    width: 1.0,
                                    height: 25.0,
                                ),
                                Text('You have pushed the\nbutton this many times:',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0),
                                ),
                            ],
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('$counter',
                            style:
                            TextStyle(
                                color: Colors.black,
                                fontSize: 32.0,
                            ),
                        ),
                    ),
                ],
            ),
        );
    }
}