import 'package:flutter/material.dart';
import 'package:learning_notes/app/theme.dart';
import 'package:learning_notes/app/drop_shadowed_text.dart';

class NamedRouteP2 extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.red,
			appBar: AppBar(
				backgroundColor: Colors.white,
				title: Center(
				  child: Text("Named Route Page 2",
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
									DropShadowedText("Back via a Pop",
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
									DropShadowedText("back via Named 1",
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
									DropShadowedText("To Named Route 3",
										style: TextStyle(
											color: Colors.blue,
											fontWeight: FontWeight.bold,
											fontSize: 24.0,
										),),
								],
							),
						),
						onPressed: (() => Navigator.of(context).pushNamed('/namedRouteP3')),
					),
					SizedBox(
						height: 17.0,
					),
				],
			),
		);
	}
}
