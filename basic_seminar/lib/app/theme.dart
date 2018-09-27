import 'package:flutter/material.dart';

class AppColors {

	/// Colors are pre-defined and reused. IE:
	///
	///          color: AppTheme.colorTealLoginButton,
	///

	static const Color customThemeAppBarColor = const Color(0x99C2C2C2);
	static const Color customThemeAppBarTextColor = const Color(0xFFE5E5E5);
	static const Color flutterLogoDarkBlue = const Color(0xFF005498);
	static const Color flutterLogoLightBlue = const Color(0xFF54CFfF8);
	static const Color customThemePageBackgroundColor = const Color(0xFFC2C2C2);

	// TODO make more of my own and get rid of these
	static const Color colorDarkPurpleBackground = const Color(0xFF270C39);
	static const Color colorTranslucentLightPurpleBackground = const Color(0xF5372750);
	static const Color colorLightPurpleListTiles = const Color(0xFF372750);
	static const Color colorFuchsia = const Color(0xFFEE1287);
	static const Color colorTeal = const Color(0xFF49C9C5);
	static const Color colorTranslucentDarkLoginBackground = const Color(0xA823163B);
	static const Color colorShieldLightBronze = const Color(0xFFF3B454);
	static const Color colorShieldDarkBronze = const Color(0xFFD6943A);
	static const Color colorShieldDropShadow = const Color(0xFF1B0A2A);
}

class AppStyles {
	/// Text Styles can be spelled out and reused later IE:
	///
	///                    style: AppTheme.loginButtonsLargeStyle,
	///
	static const TextStyle appBarStyle = const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500, color: AppColors.customThemeAppBarTextColor);
	static const TextStyle boldStyle = const TextStyle(fontWeight: FontWeight.bold);
	static const TextStyle titleStyle = const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500);
	static const TextStyle title16Style = const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500);
static const TextStyle font18_black54 = const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic, color: Colors.black54);
	static const TextStyle font14_white = const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic, color: Colors.white);
	static const TextStyle font12_black54 = const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic, color: Colors.black54);
	static const TextStyle font16_black54 = const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black54);




	static const TextStyle loginButtonsLargeStyle = const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500);
	static const TextStyle loginButtonsSmallStyle = const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300);
	static const TextStyle tabLabelStyle = const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400);
	static const TextStyle unselectedTabStyle = const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300);
	static const TextStyle ctaButtonStyle = const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500);
	static const TextStyle optionButtonStyle = const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500);
}

class AppStrings {
	static const String back = 'Back';
	static const String basicPageContainer = 'Basic Page Container';
	static const String basicFrameVA = 'Basic Frame Visual Aid';
	static const String buttonBar = 'Button Bar';
	static const String buttonSamples = 'Button Samples';
	static const String extractingWidgets = 'Extracting Widgets';
	static const String fabButton = 'FAB Button';
	static const String flatButton = 'Flat Button';
	static const String iconButton = 'Icon\nButton';
	static const String listViews = 'List Views';
	static const String materialButton = 'Material Button';
	static const String namedRoute = 'Named Routes';
	static const String namedRoutePg1 = 'Named Routes Page 1';
	static const String namedRoutePg2 = 'Named Routes Page 2';
	static const String popupMenuButton = 'Popup Menu Button';
	static const String raisedButton = 'Raised Button';
	static const String rawMaterialButton = 'Raw Material Button';
	static const String rowAndColumn = 'Row, Column & Expanded';
	static const String roundButton = 'Round Button';
	static const String routeAndNav = 'Routes and Nav Main Page';
	static const String sillyDartTricks = 'Silly Dart Tricks';
	static const String simpleMatPageRoute = 'Simple Material Page Route';
	static const String start = 'Start Here';
	static const String tabNav = 'Tab Navigation';
	static const String tipsTricks = 'Text Tips and Tricks';
}
