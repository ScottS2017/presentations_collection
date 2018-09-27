/// Flutter packages first
import 'package:flutter/material.dart';

/// App wide imports
import 'package:learning_notes/app/theme.dart';
import 'package:learning_notes/app/assets.dart';

/// Imports specific to this page
import 'package:learning_notes/app/basic_page_frame.dart';
import 'package:learning_notes/pages/basic_frame_visual_aid.dart';
import 'package:learning_notes/pages/row_and_column.dart';
import 'package:learning_notes/pages/button_examples.dart';
import 'package:learning_notes/pages/list_view.dart';
import 'package:learning_notes/pages/extracting_widgets.dart';
import 'package:learning_notes/pages/routes_navigation.dart';
import 'package:learning_notes/pages/tab_navigation.dart';
import 'package:learning_notes/pages/text_tips_and_tricks.dart';
import 'package:learning_notes/pages/silly_dart_tricks.dart';
import 'package:learning_notes/widgets/table_button.dart';

class Index extends StatelessWidget {

	// TODO see if the framework fixes the button fill issue.

	@override
	Widget build(BuildContext context) {
		return BasicPageContainer(
			appBarColor: AppColors.customThemeAppBarColor,
			appBarElevation: 10.0,
			title: "Flutter Productions",
			bgImage: assets.images.dogBackground,
			child: Padding(
				padding: const EdgeInsets.all(15.0),
				child: Container(
					alignment: Alignment.topCenter,
					child: Table(

						/// Notes about why we need to use a table in order to get IntrinsicColumnWidth and why it's important in this situation.
						defaultColumnWidth: IntrinsicColumnWidth(),
						children: [
							TableRow(
								children: [
									TableRowButton(
										borderColor: Colors.white,
										borderWidth: 1.0,
										buttonColor: AppColors.customThemeAppBarColor,
										buttonText: AppStrings.sillyDartTricks,
										buttonTextStyle: AppStyles.titleStyle,
										destinationPage: SillyDartTricks(),
									),
								],
							),
							TableRow(
								children: [
									TableRowButton(
										borderColor: Colors.white,
										borderWidth: 1.0,
										buttonColor: AppColors.customThemeAppBarColor,
										buttonText: AppStrings.basicFrameVA,
										buttonTextStyle: AppStyles.titleStyle,
										destinationPage: BasicFrameVisualAid(),
									),
								],
							),
							TableRow(
								children: [
									TableRowButton(
										borderColor: Colors.white,
										borderWidth: 1.0,
										buttonColor: AppColors.customThemeAppBarColor,
										buttonText: AppStrings.rowAndColumn,
										buttonTextStyle: AppStyles.titleStyle,
										destinationPage: RowAndColumn()
									),
								],
							),
							TableRow(
								children: [
									TableRowButton(
										borderColor: Colors.white,
										borderWidth: 1.0,
										buttonColor: AppColors.customThemeAppBarColor,
										buttonText: AppStrings.extractingWidgets,
										buttonTextStyle: AppStyles.titleStyle,
										destinationPage: ExtractingWidgets(),
									),
								],
							),
							TableRow(
								children:
								[
									TableRowButton(
										borderColor: Colors.white,
										borderWidth: 1.0,
										buttonColor: AppColors.customThemeAppBarColor,
										buttonText: AppStrings.buttonSamples,
										buttonTextStyle: AppStyles.titleStyle,
										destinationPage: ButtonExamples()
									),
								],
							),
							TableRow(
								children: [
									TableRowButton(
										borderColor: Colors.white,
										borderWidth: 1.0,
										buttonColor: AppColors.customThemeAppBarColor,
										buttonText: AppStrings.listViews,
										buttonTextStyle: AppStyles.titleStyle,
										destinationPage: ListViews()
									),
								],
							),
							TableRow(
								children: [
									TableRowButton(
										borderColor: Colors.white,
										borderWidth: 1.0,
										buttonColor: AppColors.customThemeAppBarColor,
										buttonText: AppStrings.routeAndNav,
										buttonTextStyle: AppStyles.titleStyle,
										destinationPage: RoutesAndNavigation()
									),
								],
							),
							TableRow(
								children: [
									TableRowButton(
										borderColor: Colors.white,
										borderWidth: 1.0,
										buttonColor: AppColors.customThemeAppBarColor,
										buttonText: AppStrings.tabNav,
										buttonTextStyle: AppStyles.titleStyle,
										destinationPage: TabNavigation()
									),
								],
							),
							TableRow(
								children: [
									TableRowButton(
										borderColor: Colors.white,
										borderWidth: 1.0,
										buttonColor: AppColors.customThemeAppBarColor,
										buttonText: AppStrings.tipsTricks,
										buttonTextStyle: AppStyles.titleStyle,
										destinationPage: TextTipsAndTricks()
									),
								],
							),
						],
					),
				),
			),
		);
	}
}