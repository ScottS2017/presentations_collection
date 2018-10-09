import 'package:flutter/material.dart';

class DropShadowedText extends StatelessWidget {
	DropShadowedText(this.data, {
		Key key,
		this.style,
		this.textAlign,
		this.textDirection,
		this.locale,
		this.softWrap,
		this.overflow,
		this.textScaleFactor,
		this.maxLines,
		this.semanticsLabel,
		this.shadow = const BoxShadow(
			color: Colors.black54,
			offset: Offset(3.0, 3.0),
			blurRadius: 2.0,
		),
	}) : assert(data != null);

	final String data;
	final TextStyle style;
	final TextAlign textAlign;
	final TextDirection textDirection;
	final Locale locale;
	final bool softWrap;
	final TextOverflow overflow;
	final double textScaleFactor;
	final int maxLines;
	final String semanticsLabel;

	final BoxShadow shadow;

	Widget build(BuildContext context) {
		return Stack(
			alignment: Alignment.center,
			children: [
				Align(
					widthFactor: 0.0,
					heightFactor: 0.0,
					alignment: Alignment.center,
					child: Transform(
						transform: Matrix4.translationValues(shadow.offset.dx, shadow.offset.dy, 0.0),
						child: Text(data,
							style: style.copyWith(
								fontSize: style.fontSize + shadow.spreadRadius,
								foreground: shadow.toPaint(),
							),
							textAlign: textAlign,
							textDirection: textDirection,
							locale: locale,
							softWrap: softWrap,
							overflow: overflow,
							textScaleFactor: textScaleFactor,
							maxLines: maxLines,
							semanticsLabel: semanticsLabel,
						),
					),
				),
				Text(
					data,
					style: style,
					textAlign: textAlign,
					textDirection: textDirection,
					locale: locale,
					softWrap: softWrap,
					overflow: overflow,
					textScaleFactor: textScaleFactor,
					maxLines: maxLines,
					semanticsLabel: semanticsLabel,
				),
			],
		);
	}
}
