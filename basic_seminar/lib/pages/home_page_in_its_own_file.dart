/// Flutter packages first
import 'package:flutter/material.dart';

import 'package:learning_notes/pages/index.dart';

/// App wide imports
import 'package:learning_notes/app/theme.dart';
import 'package:learning_notes/app/assets.dart';

/// Imports specific to this page
import 'package:learning_notes/app/basic_page_frame.dart';

class HomePageInItsOwnFile extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		/// The BasicPageContainer is a convenient template for
		/// all of your pages. We call it and then put the guts
		/// of our page into it.
		///
		/// Usage:
		/// You MUST specify a title and a child.
		/// You CAN specify:
		/// appBarColor (Defaults to the app theme primary color)
		/// appBarElevation (Defaults to 4)
		/// pageBgColor
		/// bgImage

		return BasicPageContainer(
			appBarColor: AppColors.flutterLogoDarkBlue,
			appBarElevation: 10.0,
			pageBgColor: Colors.white,
			title: "Flutter Productions",
			child: Container(
				height: double.infinity,
				width: double.infinity,
				decoration: BoxDecoration(
					image: DecorationImage(
						image: AssetImage(assets.images.flutterLogo),
						fit: BoxFit.contain,
						alignment: Alignment(0.0, -0.7),
					),
				),
				child: Container(
					alignment: Alignment(0.0, 0.74),
					child: Container(
					  child: RaisedButton(
						  onPressed: () {
							  Navigator.push(
								  context,
								  MaterialPageRoute(builder: (context) =>
									  Index()),
							  );
						  },
					  	color: AppColors.customThemeAppBarColor,
					  	elevation: 3.0,
					  	child: Text(AppStrings.start,
					  		style: AppStyles.titleStyle,),
					  ),
					),
				),
			),
		);
	}
}