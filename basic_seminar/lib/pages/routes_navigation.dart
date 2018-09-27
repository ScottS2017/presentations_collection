import 'package:flutter/material.dart';
import 'package:learning_notes/app/basic_page_frame.dart';
import 'package:learning_notes/app/theme.dart';
import 'package:learning_notes/app/assets.dart';
import 'package:learning_notes/pages/simple_material_page_route_pop.dart';
import 'package:learning_notes/pages/named_route.dart';
import 'package:learning_notes/app/drop_shadowed_text.dart';


class RoutesAndNavigation extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return BasicPageContainer(

            /// *****************************************************
            /// push multiple routes with .. to build a stack instead of using named routes with / . You pop one at a time OR you can use pop "until"
            /// ************
            appBarColor: AppColors.customThemeAppBarColor,
            appBarElevation: 10.0,
            pageBgColor: AppColors.customThemePageBackgroundColor,
            title: AppStrings.routeAndNav,
            bgImage: assets.images.dogBackground,
            child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                    children: <Widget>[
                        SizedBox(
                            height: 50.0,
                        ),
                        RaisedButton(
                            color: AppColors.customThemeAppBarColor,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                    children: <Widget>[
                                        DropShadowedText(
                                            "Material Page Route",
                                            style: AppStyles.font18_black54,
                                        ),
                                        DropShadowedText("onPressed: () {\n"
                                            "     Navigator.push(\n"
                                            "          context,\n"
                                            "          MaterialPageRoute(builder:\n"
                                            "               (context) => SimpleMaterialPageRoute(),\n"
                                            "          ),\n"
                                            "     );\n"
                                            "},",
                                            style: AppStyles.font14_white,),
                                    ],
                                ),
                            ),
                            onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder:
                                        (context) => SimpleMaterialPageRoute(),
                                    ),
                                );
                            },
                        ),
                        SizedBox(
                            height: 50.0,
                        ),
                        RaisedButton(
                            color: AppColors.customThemeAppBarColor,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                    children: <Widget>[
                                        DropShadowedText(
                                            "Named Route",
                                            style: AppStyles.font18_black54,
                                        ),
                                        DropShadowedText("onPressed: () {\n"
                                            "     Navigator.push(\n"
                                            "          context,\n"
                                            "          MaterialPageRoute(builder:\n"
                                            "               (context) => NamedRoutePizza(),\n"
                                            "          ),\n"
                                            "     );\n"
                                            "},",
                                            style: AppStyles.font14_white,),
                                    ],
                                ),
                            ),
                            onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder:
                                        (context) => NamedRoute(),
                                    ),
                                );
                            },
                        ),
                        SizedBox(
                            height: 50.0,
                        ),
                        RaisedButton(
                            color: AppColors.customThemeAppBarColor,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                    children: <Widget>[
                                        DropShadowedText(
                                            "Material Page Pop",
                                            style: AppStyles.font18_black54,
                                        ),
                                        DropShadowedText("onPressed: () {\n"
                                            "     Navigator.pop(context);\n"
                                            "},",
                                            style: AppStyles.font14_white,),
                                    ],
                                ),
                            ),
                            onPressed: () {
                                Navigator.pop(context);
                            },
                        ),
                    ],
                ),
            ),
        );
    }
}