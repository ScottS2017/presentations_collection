import 'package:flutter/material.dart';
import 'package:learning_notes/app/theme.dart';
import 'package:learning_notes/app/drop_shadowed_text.dart';

class NamedRoute extends StatelessWidget {

	/// In Android you serialize and deserialize the data (marshalling)
	/// when you go between activities... you have to pass the data.
	/// You marshal the data into the url of a named route and unmashall
	/// it on the other end. However, since Flutter doesn't have the situation
	/// where an activity can be opened from outside of your app, it's not
	/// necessary ito do this at all in.
	///
	/// The one time you might want it is deep linking, but most of the time you're
	/// better off handling that yourself.
	///
	/// So the vast majority of time, you'll just use simple MaterialPageRoutes.
	/// There is no need for InterProcessCommunication (IPC)

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.red,
			appBar: AppBar(
				backgroundColor: Colors.white,
				title: Center(
				  child: Text("<- Leading is ruining center",
				  style: TextStyle(
				  	color: Colors.red,
				  	fontWeight: FontWeight.bold,
				  	fontSize: 24.0,
				  ),),
				),
			),
			body: Column(
				children: <Widget>[
					SizedBox(
						height: 17.0,
					),
					RaisedButton(
						color: Colors.white,
						child: Padding(
							padding: const EdgeInsets.all(8.0),
							child: Column(
								children: <Widget>[
									DropShadowedText("Move away from the light!",
										style: TextStyle(
											color: Colors.red,
											fontWeight: FontWeight.bold,
											fontSize: 24.0,
										),),
								],
							),
						),
						onPressed: () {
							Navigator.pop(context);
						},
					),
					Expanded(
						child: Padding(
							padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
							child: Container(
								alignment: Alignment(-0.98, -0.98),
								width: double.infinity,
								color: Colors.white,
								child: Column(
									children: <Widget>[
										Padding(
											padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
											child: Card(
												color: Colors.grey[350],
												child: Padding(
													padding: const EdgeInsets.all(8.0),
													child: Text(
														"There are a number of problems with named routes and they really don't have any benefits you can't get by setting things up yourself within a MaterialPageRoute.",
														style: AppStyles.font16_black54,
													),
												),
												elevation: 4.0,
											),
										),
										Padding(
											padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
											child: Card(
												color: Colors.grey[350],
												child: Padding(
													padding: const EdgeInsets.all(8.0),
													child: Text(
														'Apparently if you use a named route for something such as "home/first/second/third" then you will navigate to third but the stack will contain all three... so if you hit the back button then you will get popped to second, not to the point you started from.',
														style: AppStyles.font16_black54,
													),
												),
												elevation: 4.0,
											),
										),
										Padding(
											padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
											child: Card(
												color: Colors.grey[350],
												child: Padding(
													padding: const EdgeInsets.all(8.0),
													child: Text(
														'Supposedly you can set up this same behavior from within a simple MaterialPageRoute by using .. to build out a sequence within a single route. You can then pop one at a time, just as with the named routes, or you can use pop until (or is that only with named routes?).',
														style: AppStyles.font16_black54,
													),
												),
												elevation: 4.0,
											),
										),
									],
								),
							),
						),
					),
					RaisedButton(
						color: Colors.white,
						child: Padding(
							padding: const EdgeInsets.all(8.0),
							child: Column(
								children: <Widget>[
									DropShadowedText("Ok. If you really,\n really wanna...",
										style: TextStyle(
											color: Colors.blue,
											fontWeight: FontWeight.bold,
											fontSize: 24.0,
										),),
								],
							),
						),
						onPressed: (() => Navigator.of(context).pushNamed('/namedRouteP1')),
					),
					SizedBox(
						height: 17.0,
					),
				],
			),
		);
	}
}
