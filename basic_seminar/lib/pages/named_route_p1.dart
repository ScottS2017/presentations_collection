import 'package:flutter/material.dart';
import 'package:learning_notes/app/theme.dart';
import 'package:learning_notes/app/drop_shadowed_text.dart';

class NamedRouteP1 extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.red,
			appBar: AppBar(
				backgroundColor: Colors.white,
				title: Center(
				  child: Text("Named Route Page 1",
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
									DropShadowedText("To named route #2...",
										style: TextStyle(
											color: Colors.blue,
											fontWeight: FontWeight.bold,
											fontSize: 24.0,
										),),
								],
							),
						),
						onPressed: (() => Navigator.of(context).pushNamed('/namedRouteP2')),
					),
					SizedBox(
						height: 17.0,
					),
				],
			),
		);
	}
}
