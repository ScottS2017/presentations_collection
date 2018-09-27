import 'package:flutter/material.dart';
import 'package:learning_notes/app/basic_page_frame.dart';
import 'package:learning_notes/app/theme.dart';
import 'package:learning_notes/app/assets.dart';


class TextTipsAndTricks extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return BasicPageContainer(

			appBarColor: AppColors.customThemeAppBarColor,
			appBarElevation: 10.0,
			pageBgColor: AppColors.customThemePageBackgroundColor,
			title: AppStrings.tipsTricks,
			bgImage: assets.images.dogBackground,
			child: Container(
				color: Color(0x44FF0000),
				child: Table(
					children: [
						TableRow(
							children: [
								Text(
								"You can't extract things that arn't widgets, but you can temporarily 'rename' the entity to Container and then extract it regardless of the errors. You can then change the extracted widget's type, extension and build type. Use this to extact things like tables or table rows."
							),
							],
						),
					],
				),
			),
		);
	}
}