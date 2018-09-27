import 'package:flutter/material.dart';
import 'package:learning_notes/app/basic_page_frame.dart';
import 'package:learning_notes/app/theme.dart';
import 'package:learning_notes/app/assets.dart';


class TabNavigation extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return BasicPageContainer(

			appBarColor: AppColors.customThemeAppBarColor,
			appBarElevation: 10.0,
			pageBgColor: AppColors.customThemePageBackgroundColor,
			title: AppStrings.tabNav,
			bgImage: assets.images.dogBackground,
			child: Container(
				color: Color(0x44FF0000),
			),
		);
	}
}