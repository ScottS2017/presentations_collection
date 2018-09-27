/// Flutter packages first
import 'package:flutter/material.dart';

/// App wide imports
import 'package:learning_notes/app/theme.dart';
import 'package:learning_notes/app/assets.dart';
import 'package:learning_notes/app/drop_shadowed_text.dart';

/// Imports specific to this page
import 'package:learning_notes/app/basic_page_frame.dart';
import 'package:learning_notes/pages/basic_frame_visual_aid.dart';
import 'package:learning_notes/pages/row_and_column.dart';
import 'package:learning_notes/pages/list_view.dart';
import 'package:learning_notes/pages/routes_navigation.dart';
import 'package:learning_notes/pages/tab_navigation.dart';
import 'package:learning_notes/pages/text_tips_and_tricks.dart';


class ButtonExamples extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return BasicPageContainer(
			appBarColor: AppColors.customThemeAppBarColor,
			appBarElevation: 10.0,
			// pageBgColor: AppColors.customThemePageBackgroundColor,
			title: AppStrings.buttonSamples,
			bgImage: assets.images.dogBackground,
			child: Padding(
				padding: const EdgeInsets.all(15.0),
				child: Container(
					alignment: Alignment.topCenter,

					/// Why a Table????
					///
					/// The entire reason we went with a table here is that it's the only
					/// way to get IntrinsicColumnWidth. This examines the contents of each
					/// cell to see which has the greatest width and then sets the width of
					/// all cells to match it. **This is EXPENSIVE**. Do not use unless
					/// there's no other way to do what you need.
					///
					/// It allows us to put any text we want into these buttons, knowing
					/// they will expand as necessary to ensure all buttons are the same
					/// width and perfectly aligned.
					///
					/// You can hard code them to be the same width, of course... but then
					/// what happens when you start doing Localization and the text in
					/// the new language is wider than the text in the old one?
					/// (FYI: Localization is called Internationalization in Flutter)
					child: Table(
						defaultColumnWidth: IntrinsicColumnWidth(),
						children: [
							TableRow(
								children: <Widget>[
									Padding(
										padding: const EdgeInsets.all(8.0),
										child: Container(
											decoration: BoxDecoration(
												border: Border.all(color: Colors.white,
													width: 1.0,
													style: BorderStyle.solid),
											),
											child: RaisedButton(
												color: AppColors.customThemeAppBarColor,
												child: Text(AppStrings.raisedButton,
													style: AppStyles.titleStyle,),
												onPressed: () {
													Navigator.push(
														context,
														MaterialPageRoute(builder: (context) =>
															BasicFrameVisualAid()),
													);
												},
											),
										),
									),
								],
							),
							TableRow(
								children: <Widget>[
									Padding(
										padding: const EdgeInsets.all(8.0),
										child: Container(
											decoration: BoxDecoration(
												border: Border.all(color: Colors.white,
													width: 1.0,
													style: BorderStyle.solid),
											),
											child: FlatButton(
												color: AppColors.customThemeAppBarColor,
												child: DropShadowedText(
													AppStrings.flatButton,
													style: AppStyles.titleStyle
												),

												onPressed: () {
													Navigator.push(
														context,
														MaterialPageRoute(builder: (context) => RowAndColumn()),
													);
												},
											),
										),
									),
								],
							),
							TableRow(
								children: <Widget>[
									Padding(
										padding: const EdgeInsets.all(8.0),
										child: Container(
											decoration: BoxDecoration(
												border: Border.all(color: Colors.red,
													width: 1.0,
													style: BorderStyle.solid),
											),
											child: MaterialButton(
												textColor: AppColors.colorFuchsia,
												color: AppColors.customThemeAppBarColor,
												child: Text(AppStrings.materialButton,
													style: AppStyles.titleStyle,),
												onPressed: () {
													Navigator.push(
														context,
														MaterialPageRoute(builder: (context) => ListViews()),
													);
												},
											),
										),
									),
								],
							),
							TableRow(
								children: <Widget>[
									Padding(
										padding: const EdgeInsets.all(8.0),
										child: Container(
											decoration: BoxDecoration(
												border: Border.all(color: Colors.red,
													width: 1.0,
													style: BorderStyle.solid),
											),
											child: RaisedButton(
												color: AppColors.customThemeAppBarColor,
												child: Text(AppStrings.rawMaterialButton,
													style: AppStyles.titleStyle,),
												onPressed: () {
													Navigator.push(
														context,
														MaterialPageRoute(builder: (context) => RoutesAndNavigation()),
													);
												},
											),
										),
									),
								],
							),
							TableRow(
								children: <Widget>[
									Padding(
										padding: const EdgeInsets.all(8.0),
										child: Container(
											decoration: BoxDecoration(
												border: Border.all(color: Colors.red,
													width: 1.0,
													style: BorderStyle.solid),
											),
											child: RaisedButton(
												color: AppColors.customThemeAppBarColor,
												child: Text(AppStrings.popupMenuButton,
													style: AppStyles.titleStyle,),
												onPressed: () {
													Navigator.push(
														context,
														MaterialPageRoute(builder: (context) => TabNavigation()),
													);
												},
											),
										),
									),
								],
							),
							TableRow(
								children: <Widget>[
									Padding(
										padding: const EdgeInsets.all(8.0),
										child: Container(
											decoration: BoxDecoration(
												border: Border.all(color: Colors.red,
													width: 1.0,
													style: BorderStyle.solid),
											),
											child: RaisedButton(
												color: AppColors.customThemeAppBarColor,
												child: Text(AppStrings.buttonBar,
													style: AppStyles.titleStyle,),
												onPressed: () {
													Navigator.push(
														context,
														MaterialPageRoute(builder: (context) => TextTipsAndTricks()),
													);
												},
											),
										),
									),
								],
							),
							TableRow(
								children: <Widget>[
									Row(
										mainAxisAlignment: MainAxisAlignment.spaceEvenly,
										children: <Widget>[
											Padding(
												padding: const EdgeInsets.all(8.0),
												child: FloatingActionButton(
													heroTag: 'fab1',
													foregroundColor: Colors.white,
													backgroundColor: Colors.blue,
													elevation: 3.0,
													shape: CircleBorder(
														side: BorderSide(
															style: BorderStyle.solid,
															width: 1.0,
															color: Colors.red,
														)
													),
													child: Icon(
														Icons.thumb_up
													),
													onPressed: () {
														Navigator.push(
															context,
															MaterialPageRoute(builder: (context) =>
																TextTipsAndTricks()),
														);
													},
												),
											),
											Padding(
												padding: const EdgeInsets.all(8.0),
												child: IconButton(
													icon: Icon(
														Icons.thumb_up,
														size: 30.0,
														color: Colors.red,
													),
													onPressed: () {
														Navigator.push(
															context,
															MaterialPageRoute(builder: (context) =>
																TextTipsAndTricks()),
														);
													},
													highlightColor: AppColors.customThemeAppBarColor,
													splashColor: AppColors.customThemeAppBarTextColor,
												),
											),
										],
									),
								],
							)
						],
					),
				),
			),
		);
	}
}



