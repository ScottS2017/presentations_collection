import 'package:flutter/material.dart';
import 'dart:core';
import 'package:learning_notes/app/basic_page_frame.dart';
import 'package:learning_notes/app/theme.dart';

class SillyDartTricks extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BasicPageContainer(
		appBarColor: AppColors.customThemeAppBarColor,
		appBarElevation: 6.0,
		pageBgColor: AppColors.customThemeAppBarColor,
		title: AppStrings.sillyDartTricks,
		child: SizedBox(
			height: 100.0,
			width: 100.0,
		)
	);
  }
}
/*

class VariablesAndConstructors extends StatelessWidget{

	bool dontExecute = false;
	final int one, two, three, four, five;
	final String six,
		seven,
		eight,
		nine,
		ten;

	VariablesAndConstructors({
		Key key,
		this.one,
		this.two,
		this.three,
		this.four,
		this.five,
}) : super(key: key);

	one ??= 1;
	this.three ?. dontExecute = true;

  @override
  Widget build(BuildContext context) {
    return three?.Container(
	  color: Colors.blueGrey,
	  );
  }

}
*/
