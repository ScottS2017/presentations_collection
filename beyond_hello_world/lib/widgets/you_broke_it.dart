import 'package:beyond_hello_world/model/counter_model.dart';
import 'package:flutter/material.dart';

import 'package:beyond_hello_world/app/drop_shadowed_text.dart';
import 'package:scoped_model/scoped_model.dart';

class YouBrokeIt extends StatelessWidget {

    final String message;

    YouBrokeIt({
        Key key,
        @required this.message,
    }) : super();

    @override
    Widget build(BuildContext context) {
        return Material(
            child: Container(
                color: Colors.red,
                child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                            DropShadowedText(
                                message,
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32.0
                                ),
                            ),
                            SizedBox(
                                width: 1.0,
                                height: 25.0,
                            ),
                            ScopedModelDescendant<CounterModel>(
                                builder: (context, child, counterModel) =>
                                    DropShadowedText(
                                        counterModel.counter.toString(),
                                        textDirection: TextDirection.ltr,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 32.0
                                        ),
                                    ),
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}