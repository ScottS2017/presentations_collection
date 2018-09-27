import 'package:flutter/material.dart';

import 'package:learning_notes/app/drop_shadowed_text.dart';
import 'package:learning_notes/app/theme.dart';

class TableRowButton extends StatelessWidget {
	TableRowButton({
		Key key,
		this.borderColor,
		this.borderWidth,
		this.buttonColor,
		this.buttonText,
		this.buttonTextStyle,
		this.destinationPage
	});

	final Color borderColor;
	final double borderWidth;
	final Color buttonColor;
	final String buttonText;
	final TextStyle buttonTextStyle;
	final Widget destinationPage;

	Widget build(BuildContext context) {
		return Padding(
			padding: const EdgeInsets.all(8.0),
			child: Container(
				decoration: BoxDecoration(
					border: Border.all(color: borderColor,
						width: 1.0,
						style: BorderStyle.solid),
				),
				child: RaisedButton(
					color: AppColors.customThemeAppBarColor,
					child: DropShadowedText(
						buttonText,
						style: buttonTextStyle,
					),
					onPressed: () {
						Navigator.push(
							context,
							MaterialPageRoute(builder: (context) =>
								destinationPage),
						);
					},
				),
			),
		);
	}
}