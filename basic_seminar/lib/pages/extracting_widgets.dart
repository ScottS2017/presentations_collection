import 'package:flutter/material.dart';
import 'package:learning_notes/app/basic_page_frame.dart';
import 'package:learning_notes/app/theme.dart';
import 'package:learning_notes/app/assets.dart';

class ExtractingWidgets extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return BasicPageContainer(
            appBarColor: AppColors.customThemeAppBarColor,
            appBarElevation: 10.0,
            pageBgColor: AppColors.customThemePageBackgroundColor,
            title: AppStrings.rowAndColumn,
            bgImage: assets.images.dogBackground,
            child:

            /// Above this is the PageContainer that wraps our content... and  below is the content.

            Container(
                child: Center(
                    child: SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                        child: Row(
                            children: <Widget>[
                                Column(
                                    children: <Widget>[
                                        Expanded(
                                            flex: 1,
                                            child: Container(
                                                height: 200.0,
                                                width: 100.0,
                                                color: Colors.black,
                                                child: FloatingActionButton(
                                                    foregroundColor: Colors.white,
                                                    backgroundColor: Colors.green,
                                                    heroTag: "HeroZero",
                                                    child: Icon(
                                                        Icons.save,
                                                    ),
                                                    onPressed: (
                                                        null
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Container(
                                            height: 150.0,
                                            width: 100.0,
                                            color: Colors.blue,
                                            child: FloatingActionButton(
                                                foregroundColor: Colors.orange,
                                                backgroundColor: Colors.purple,
                                                heroTag: "Hero1",
                                                child: Icon(
                                                    Icons.fast_forward,
                                                ),
                                                onPressed: (
                                                    null
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                                Column(
                                    children: <Widget>[
                                        Container(
                                            height: 325.0,
                                            width: 100.0,
                                            color: Colors.yellow,
                                            child: FloatingActionButton(
                                                foregroundColor: Colors.white,
                                                backgroundColor: Colors.red,
                                                heroTag: "Hero2",
                                                child: Icon(
                                                    Icons.keyboard,
                                                ),
                                                onPressed: (
                                                    null
                                                ),
                                            ),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Container(
                                                height: 200.0,
                                                width: 100.0,
                                                color: Colors.green,
                                                child: FloatingActionButton(
                                                    foregroundColor: Colors.blue,
                                                    backgroundColor: Colors.white,
                                                    heroTag: "Hero3",
                                                    child: Icon(
                                                        Icons.plus_one,
                                                    ),
                                                    onPressed: (
                                                        null
                                                    ),
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                                Column(
                                    children: <Widget>[
                                        Expanded(
                                            flex: 1,
                                            child: Container(
                                                height: 200.0,
                                                width: 100.0,
                                                color: Colors.black,
                                                child: FloatingActionButton(
                                                    foregroundColor: Colors.blue,
                                                    backgroundColor: Colors.white,
                                                    heroTag: "Hero4",
                                                    child: Icon(
                                                        Icons.save,
                                                    ),
                                                    onPressed: (
                                                        null
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Container(
                                            height: 200.0,
                                            width: 100.0,
                                            color: Colors.purple[300],
                                            child: FloatingActionButton(
                                                foregroundColor: Colors.black,
                                                backgroundColor: Colors.pink[300],
                                                heroTag: "Hero5",
                                                child: Icon(
                                                    Icons.explicit,
                                                ),
                                                onPressed: (
                                                    null
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                                Column(
                                    children: <Widget>[
                                        Container(
                                            height: 200.0,
                                            width: 100.0,
                                            color: Colors.grey,
                                            child: FloatingActionButton(
                                                foregroundColor: Colors.orange,
                                                backgroundColor: Colors.brown,
                                                heroTag: "Hero6",
                                                child: Icon(
                                                    Icons.input,
                                                ),
                                                onPressed: (
                                                    null
                                                ),
                                            ),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: new Cell(
                                                foregroundColor: Colors.pink,
                                                backgroundColor: Colors.blue,
                                                heroTag: "hero7",
                                                icon: Icons.airline_seat_legroom_reduced,
                                                onPressed: () => print("Button Pressed"),
                                            ),
                                        ),
                                    ],
                                ),
                            ],
                        ),
                    ),
                ),
            ),
        );
    }
}

class Cell extends StatelessWidget {

    final Color foregroundColor;
    final Color backgroundColor;
    final String heroTag;
    final IconData icon;
    final VoidCallback onPressed;

    const Cell({
        Key key,
        this.backgroundColor,
        this.foregroundColor,
        this.heroTag,
        this.icon,
        @required this.onPressed,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Container(
            height: 200.0,
            width: 100.0,
            color: Colors.teal,
            child: FloatingActionButton(
                foregroundColor: foregroundColor,
                backgroundColor: backgroundColor,
                heroTag: heroTag,
                child: Icon(
                    icon,
                ),
                onPressed: onPressed,
            ),
        );
    }
}