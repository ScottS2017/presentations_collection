import 'package:flutter/material.dart';
import 'package:learning_notes/app/basic_page_frame.dart';
import 'package:learning_notes/app/theme.dart';
import 'package:learning_notes/app/assets.dart';
import 'package:learning_notes/app/drop_shadowed_text.dart';


class SimpleMaterialPageRoute extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return BasicPageContainer(

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
						Row(
							children: <Widget>[
								SizedBox(
									height: 150.0,
								),
							],
						),
						Row(
							mainAxisAlignment: MainAxisAlignment.spaceEvenly,
							children: <Widget>[
								RaisedButton(
									color: AppColors.customThemeAppBarColor,
									child: Padding(
										padding: const EdgeInsets.all(8.0),
										child: DropShadowedText("onPressed: () {\n"
											"     Navigator.pop(context);\n"
											"},",
										style: AppStyles.titleStyle,),
									),
									onPressed: () {
										Navigator.pop(context);
									},
								),
							],
						),
					],
				),
			),
		);
	}
}