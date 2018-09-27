import 'package:flutter/material.dart';
import 'package:learning_notes/app/basic_page_frame.dart';
import 'package:learning_notes/app/theme.dart';
import 'package:learning_notes/app/assets.dart';

class RowAndColumn extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return BasicPageContainer(

			appBarColor: AppColors.customThemeAppBarColor,
			appBarElevation: 10.0,
			pageBgColor: AppColors.customThemePageBackgroundColor,
			title: AppStrings.rowAndColumn,
			bgImage: assets.images.dogBackground,
			child: Container(
				decoration: BoxDecoration(
					border: Border.all(
						color: Colors.blue,
						width: 10.0,
						style: BorderStyle.solid,
					),
				),
				child: Center(
					child: SizedBox(
						height: double.infinity,
						width: 500.0,
						child: Column(
							children: <Widget>[
								Container(
									width: double.infinity,
									height: 100.0,
									color: Colors.yellow,
									child: Center(
										child: Padding(
											padding: const EdgeInsets.all(8.0),
											child: Text(
												"height: 100.0,\nwidth:double.infinity \n// double.infinity != Expanded. \n// double.infinity == person (eat ALL the food at the table).\n// Expanded == the dog (only gets leftover scraps).",
												style: TextStyle(
													color: Colors.black,
													fontWeight: FontWeight.bold,
													fontSize: 14.0,
												),
											),
										),
									),
								),
								Row(
									children: <Widget>[
										Expanded(
											flex: 2,
											child: Container(
												height: 100.0,
												color: Colors.orange,
												child: Center(
													child: Text(
														"height: 100.0,\nExpanded(\n    flex:2),",
														style: TextStyle(
															color: Colors.black,
															fontWeight: FontWeight.bold,
															fontSize: 16.0,
														),
													),
												),
											),
										),
										Expanded(
											flex: 1,
											child: Container(
												height: 100.0,
												color: Colors.purple,
												child: Center(
													child: Text(
														"height: 100.0,\nExpanded(\n    flex:1),",
														style: TextStyle(
															color: Colors.black,
															fontWeight: FontWeight.bold,
															fontSize: 14.0,
														),
													),
												),
											),
										),
										Expanded(
											flex: 1,
											child: Container(
												height: 100.0,
												color: Colors.red,
												child: Center(
													child: Text(
														"height: 100.0,\nExpanded(\n    flex:1),",
														style: TextStyle(
															color: Colors.black,
															fontWeight: FontWeight.bold,
															fontSize: 14.0,
														),
													),
												),
											),
										)
									],
								),
								Row(
									children: <Widget>[
										Expanded(
											flex: 20,
											child: Container(
												height: 100.0,
												color: Colors.yellow,
												child: Center(
													child: Text(
														"height: 100.0,\nExpanded(\n    flex:20),",
														style: TextStyle(
															color: Colors.black,
															fontWeight: FontWeight.bold,
															fontSize: 10.0,
														),
													),
												),
											),
										),
										Expanded(
											flex: 60,
											child: Container(
												height: 100.0,
												width: 2.0,
												color: Colors.pink,
												child: Center(
													child: Text(
														"height: 100.0,\nwidth:2.0\nExpanded(\n    flex:60), // Width Overridden!",
														style: TextStyle(
															color: Colors.black,
															fontWeight: FontWeight.bold,
															fontSize: 16.0,
														),
													),
												),
											),
										),
										Expanded(
											flex: 20,
											child: Container(
												height: 100.0,
												color: Colors.blueGrey,
												child: Center(
													child: Text(
														"height: 100.0,\nExpanded(\n    flex:20),",
														style: TextStyle(
															color: Colors.black,
															fontWeight: FontWeight.bold,
															fontSize: 10.0,
														),
													),
												),
											),
										)
									],
								),
								Row(
									children: <Widget>[Expanded(
											flex: 1,
											child: Container(
												height: 100.0,
												width: 800.0,
												color: Colors.purple,
												child: Center(
													child: Text(
														"height: 100.0,\nwidth: 800.0\nExpanded(\n    flex:1),\n//  Width Overridden!",
														style: TextStyle(
															color: Colors.black,
															fontWeight: FontWeight.bold,
															fontSize: 14.0,
														),
													),
												),
											),
										),
										Expanded(
											flex: 1,
											child: Container(
												height: 100.0,
												color: Colors.green,
												child: Center(
													child: Text(
														"height: 100.0,\nExpanded(\n    flex:1),",
														style: TextStyle(
															color: Colors.black,
															fontWeight: FontWeight.bold,
															fontSize: 16.0,
														),
													),
												),
											),
										)
									],
								),
								Row(
									children: <Widget>[
										Expanded(
											flex: 1,
											child: Padding(
												padding: const EdgeInsets.all(20.0),
												child: Container(
													height: 100.0,
													color: Colors.green,
													child: Center(
														child: Padding(
															padding: const EdgeInsets.all(8.0),
															child: Text(
																"height: 100.0,\nExpanded(flex:1),\npadding: EdgeInsets.all(20.0),\n// In a Row, MainAxis is horizontal so Expanded works horizontally. Expanded wraps Padding.",
																style: TextStyle(
																	color: Colors.black,
																	fontWeight: FontWeight.bold,
																	fontSize: 14.0,
																),
															),
														),
													),
												),
											),
										),
									],
								),
								Expanded(
									flex: 1,
									child: Container(
										width: double.infinity,
										color: Colors.yellow,
										child: Padding(
											padding: const EdgeInsets.all(8.0),
											child: Text(
												"width: double.infinity, ... Expanded(flex:1), // This is not in a Row. The container was put directly into the column, so MainAxis is vertical.",
												style: TextStyle(
													color: Colors.black,
													fontWeight: FontWeight.bold,
													fontSize: 12.0,
												),
											),
										),
									),
								)
							],
						),
					),
				),
			),
		);
	}
}