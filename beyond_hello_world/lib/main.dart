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

// Check what platform you're on and set the TargetPlatform accordingly
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

    // Creates a specific instance of the CounterModel, to enable us to have it persist through the lifecycle.
    static final counterModel = CounterModel();

    int numTimesBroke = 0;

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Beyond Hello World',
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),

            // ScopedModel is another way to use InheritedWidget. It makes InheritedWidget easy.
            home: ScopedModel<CounterModel>(
                model: counterModel,

              // Orientation Builder allows us to track device orientation. It does not use the IMU but, rather, checks to see which is greater, height or width. This becomes apparent when run inside of Windows.
              child: OrientationBuilder(
                  builder: (context, orientation) {

                      // Since the builder is a function that uses a return, you can use an actual if statement here. If this were the parameter of a constructor, as below, we'd have to use a ternary.
                      if(counterModel.broken){
                          numTimesBroke < 4 ? numTimesBroke++ : numTimesBroke = 4;
                          return YouBrokeIt(

                              // An example of placing control flow into your UI. Getting this crazy with it is not recommended but a simple decision to choose which UI tree (group) to use every once in a while is fine.

                              // This chooses what value to use for the message parameter. As mentioned above, when making decisions inside of a parameter you need to use a ternary; an if statement will fail.
                              message: numTimesBroke == 1
                                  ? 'You broke it!'
                                  : numTimesBroke == 2
                                  ? 'No man, seriously. You messed it up bad.'
                                  : numTimesBroke == 3
                                  ? 'Are you having fun or something?'
                                  : 'Houston, you have a personal problem'
                          );
                      }

                      // If it's not broken, choose which Widget tree to call based on Orientation. Then pass in the appropriate title string for that tree.
                      else if (orientation == Orientation.portrait) {
                          return PortraitPage(
                              title: 'B.H.W. Portrait Page',);
                      } else {
                          return LandscapePage(
                              title: 'B.H.W. Landscape Page');
                      }
                  }
              ),
            ),
        );
    }
}