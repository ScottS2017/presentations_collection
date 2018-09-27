import 'package:flutter/material.dart';
import 'package:learning_notes/app/theme.dart';

//
// The idea of a page container is that you create a framework of a page
// within which you add your widgets, which will complete each page.
// Here we set up a basic page with a background image and an AppBar
//

class BasicPageContainer extends StatelessWidget {
	final Color appBarColor;
	final TextStyle specifiedAppBarTextStyle;
	final TextStyle customThemeAppBarTextStyle;
	final double appBarElevation;
	final String title;
	final Color pageBgColor;
	final String bgImage;
	final BoxFit boxFit;
	final Alignment alignment;
	final Widget child;

	BasicPageContainer({
		Key key,
		this.appBarColor,
		this.specifiedAppBarTextStyle,
		this.customThemeAppBarTextStyle = AppStyles.appBarStyle,
		this.appBarElevation,
		@required this.title,
		this.pageBgColor,
		this.bgImage,
		this.boxFit = BoxFit.cover,
		this.alignment = Alignment.center,
		@required this.child,
	}) : super(key: key);


	@override
	Widget build(BuildContext context) {

		/// The usual way to set up a background image for a page is
		/// to put a BoxDecoration inside of a Container, display the
		/// image through the BoxDecoration and then the child of the
		/// Container is the rest of your page.

		return Container(

			/// By using a ternary inline within the UI code, we can
			/// make decisions about what to or to not use.
			/// Here we can use a background image or not, but in other
			/// cases we can make major decisions about which widgets
			/// or entire widget trees we use.
			decoration: bgImage != null ?
			useAnImage(bgImage) :
			null,

			child: Scaffold(

				/// Without a transparent background color, the background of the
				/// Scaffold will be opaque, and block our background image.
				///
				/// *Normally* you never, EVER want to use Colors.transparent because
				/// it's very expensive compared to  MaterialType.transparency because
				/// it actually paints every pixel the color "transparent", whereas
				/// Material.transparency just skips painting areas that are transparent.
				/// Unfortunately we can't use a MaterialType for the Scaffold's
				/// background color so we're stuck with Colors.transparency
				///
				/// If there is an image provided then make the Scaffold background
				/// transparent. If there is a background color specified, use it.
				/// Else, use white.
				backgroundColor: bgImage != null ?
				Colors.transparent :
				pageBgColor != null ?
				pageBgColor : Theme.of(context).primaryColor,

				/// The classic AppBar. Notice that even though our page content is
				/// on a layer above the Scaffold's background, the appBar itself is
				/// actually above our page content in the Z axis, allowing it to
				/// have a shadow on the page content. This shadow is controlled by
				/// the elevation parameter.

				appBar: AppBar(

					/// If an app bar color wasn't specified, use the theme's primary color.
					backgroundColor: appBarColor == null ? Theme
						.of(context)
						.primaryColor : appBarColor,

					/// Remember that the text string 'title' was passed in.
					title: Text(title,

						/// The themes are defined in the theme.dart file,
						/// contained in the app directory
						style: specifiedAppBarTextStyle != null ?
						specifiedAppBarTextStyle :
						customThemeAppBarTextStyle != null ?
						customThemeAppBarTextStyle :
						Theme
							.of(context)
							.primaryTextTheme
							.headline //AppTheme.appBarStyle
					),

					/// If an elevation wasn't specified, use 4.0, which is the usual default
					/// value is you didn't use elevation: (but since it's called here, we can't
					/// leave it null. So we set it to 4.0, same as the default.
					elevation: appBarElevation == null ?
					4.0 :
					appBarElevation,
				),

				/// This 'child' points to whatever widget you passed in.
				body: child,
			),
		);
	}

	BoxDecoration useAnImage(theImage) {
		return BoxDecoration(
			image: DecorationImage(
				image: AssetImage(theImage),

				/// If this BoxFit doesn't work for you,
				/// delete 'fitHeight', put your cursor after
				/// the period and then hit CNTL + Enter
				/// to see what other options you have.
				fit: boxFit,

				/// There are a number of alignments such as
				/// Alignment.bottomRight, Alignment.topCenter,
				/// etc.. Alternatively you can tweak your alignment
				/// manually as we have done here.
				///
				/// For manual tweaking, the range of valid values for
				/// X and Y is -1.0 to 1.0. " 0.0, 0.0 " will center the image.
				///
				/// Remember that with Flutter you can easily
				/// experiment by making small changes and then
				/// using hot reload / hot restart to see your
				/// results immediately. So yes, you can play
				/// "a little left... no, too much... now down... "
				/// and see the results of each change right away.
				alignment: alignment,
			),
		);
	}
}
