import 'dart:io';

import 'package:beyond_hello_world/model/counter_model.dart';
import 'package:beyond_hello_world/widgets/landscape_page.dart';
import 'package:beyond_hello_world/widgets/portrait_page.dart';
import 'package:beyond_hello_world/widgets/you_broke_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:scoped_model/scoped_model.dart';

void main() {
    debugDefaultTargetPlatformOverride = TargetPlatform.android;
    _setTargetPlatformForDesktop();
    runApp(MyApp());
}

void _setTargetPlatformForDesktop() {
    TargetPlatform targetPlatform;
    if (Platform.isMacOS) {
        targetPlatform = TargetPlatform.iOS;
    } else if (Platform.isLinux || Platform.isWindows) {
        targetPlatform = TargetPlatform.android;
    }
    if (targetPlatform != null) {
        debugDefaultTargetPlatformOverride = targetPlatform;
    }
}

class MyApp extends StatelessWidget {
    static final counterModel = CounterModel();
    int numTimesBroke = 0;

    @override
    Widget build(BuildContext context) {

        return MaterialApp(
            title: 'Beyond Hello World',
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),
            home: ScopedModel<CounterModel>(
                model: counterModel,
              child: OrientationBuilder(
                  builder: (context, orientation) {
                      if(counterModel.broken){
                          numTimesBroke < 4 ? numTimesBroke++ : numTimesBroke = 4;
                          return YouBrokeIt(
                              message: numTimesBroke == 1
                                  ? 'You broke it!'
                                  : numTimesBroke == 2
                                  ? 'No man, seriously. You messed it up bad.'
                                  : numTimesBroke == 3
                                  ? 'Are you having fun or something?'
                                  : 'Houston, you have a personal problem'
                          );
                      }
                      else if (orientation == Orientation.portrait) {
                          return PortraitPage(
                              title: 'B.H.W. Portrait Page',);
                      } else {
                          print('It didn\t break');
                          return LandscapePage(
                              title: 'B.H.W. Landscape Page');
                      }
                  }
              ),
            ),
        );
    }
}

class Texto extends StatelessWidget{

    String text;
    Texto({
        this.text,
}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(text),
    );
  }


}

