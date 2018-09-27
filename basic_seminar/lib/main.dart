import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;

import 'package:learning_notes/pages/home_page_in_its_own_file.dart';
import 'package:learning_notes/app/theme.dart';

import 'package:learning_notes/pages/named_route_p1.dart';
import 'package:learning_notes/pages/named_route_p2.dart';
import 'package:learning_notes/pages/named_route_p3.dart';

/// focus nodes.... don't forget to create them in inti state
/// and dispose of them in a dispose method
///
///example ins in signup page in homegrounds
///
/// can't focus a button yet in Flutter
///
/// *** Master and use MaterialButton !!!! it has ink splash
///
/// Making a flat button theme to standardize a button widget
/// the theme data can be overridden
/// use Border() in order to get rid of the rounded corners on a
/// MaterialButton / Flat Button
///
///Cover the default button color: ThemeData.buttonColor
///
/// cover validation per the signup page, and check into the
/// error style that has been set in theme.dart
///
/// learn scroll to center.... check utils.dart and the signup page
/// where it is put into single child scrollable
///
/// there are various keyboard types... TextFormFiled "keyboardType"
///
/// use save on the button press in the email match validation to ensure
/// that the first password has been saved before being compared to the second.
///
/// MASTER the page transition used in the welcome page to the signup page
///
/// what is shrinkWrap and how does it work? (shrinkWrappingViewport)
///
///


///
/// Things I've learned along the way. Don't forget to check the test
/// directory for notes on testing.
///
///

/// ********************** General Notes and Pointers **********************
/// Dart files are all in lowercase with underscores.
///
/// Dart classes are all in camelCase.
///
/// Dart does not have Arrays, Floats, Chars or several other things.
///
/// Dart has int, double, String, bool, List[], Map, @annotations, Enums, generics
/// 	dynamic, <T> and a few others but the ones name here are what you'll use most.
///
/// Regarding Dynamics: List<String> is a list of only Strings but List<dynamic> can
/// 	be a list of mixed types.
///
/// Futures (Promise), async and await: Yes
///
/// static, private, public: No
///
/// Final & Const = static
///
/// underscore before _myVar = private
///
/// Scope is Lexical, with Lexical closures.
///
/// The usual: Operators, if, else, for, while, do-while, break, continue, switch,
/// 	case and assert, try-catch and throw.
///
/// Single inheritance with mixins
///
/// Cascade Notation:
/// 	https://www.dartlang.org/guides/language/language-tour#cascade-notation-
///

/// ********************** Pitfalls and Brick Walls **********************
/// You will find the missing comma on top of the pile of dead code, next to the twins.
///
/// During testing: "Element does not exist" probably means you didn't pump the widget.
///
/// Equality check == on a list or complex object does NOT test if the *contents* of the two
/// are equal. It tests to see if the *Identity* is equal. Be sure to master this:
/// https://stackoverflow.com/questions/10404516/how-can-i-compare-lists-for-equality-in-dart

void main() {
    debugDefaultTargetPlatformOverride = TargetPlatform.android;
    _setTargetPlatformForDesktop();
    runApp(LearningNotes());
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

class LearningNotes extends StatelessWidget {
    @override
    Widget build(BuildContext context) {

        /// By returning a material app you can a avoid many
        /// of the issues associated with not having a material
        /// widget ancestor in the tree.
        return MaterialApp(

            /// Always use single quotes for consistency... except if you need
            /// a single quote in your string. Then use double quotes. IE:
            title: "Things I've learned along the way",

            /// You can specify much of your theme data here.
            /// Have these variables refer to a file. Preferably one named
            /// theme in a directory that can be named app, for things that
            /// are needed app-wide.
            theme: ThemeData(
                brightness: Brightness.dark,
                primaryColor: AppColors.colorDarkPurpleBackground,
                primaryColorBrightness: Brightness.dark,
                scaffoldBackgroundColor: AppColors.colorDarkPurpleBackground,
                splashColor: AppColors.flutterLogoLightBlue.withOpacity(0.3),
                highlightColor: AppColors.flutterLogoDarkBlue.withOpacity(0.4),
                fontFamily: 'Roboto',
            ),

            /// To keep things neat and easy to understand, it's preferable
            /// to refer the home of the app to a class in another file.

            /// It's also good to keep separate folders for things like
            /// data models, heavy business logic, pages (they're like activities),
            /// and widgets that are components used within those pages, as well
            /// as other places.
            home: HomePageInItsOwnFile(),

            routes: <String, WidgetBuilder>{
                '/namedRouteP1': (BuildContext context) => NamedRouteP1(),
                '/namedRouteP2': (BuildContext context) => NamedRouteP2(),
                '/namedRouteP3': (BuildContext context) => NamedRouteP3(),
            },

        );
    }
}