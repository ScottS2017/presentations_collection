import 'dart:io';

import 'package:beyond_hello_world/app/drop_shadowed_text.dart';
import 'package:beyond_hello_world/widgets/landscape_page.dart';
import 'package:beyond_hello_world/widgets/portrait_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;

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

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Beyond Hello World',
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),
            home: OrientationBuilder(
                builder: (context, orientation) {
                    if (orientation == Orientation.portrait) {
                        return PortraitPage(
                            title: 'B.H.W. Portrait Page',);
                    } else {
                        return LandscapePage(
                            title: 'B.H.W. Landscape Page',);
                    }
                }
            ),
        );
    }
}