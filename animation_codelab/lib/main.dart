import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'testing_this.dart';

/// This is based on the Basics of Animation tutorial by
/// Tensor at https://www.youtube.com/watch?v=5urRyqOwTuo

void main() {
    runApp(new MaterialApp(
        title: 'Layout Practice',
        theme: new ThemeData(primarySwatch: Colors.blue),
        home: new MyApp()));
}

class Home extends StatefulWidget {
    @override
    _HomeState createState() => new _HomeState();
}

/// Check the docs on SingleTickerProviderStateMixin and Ticker
class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
    Animation animation; // xx: The var for the animation itself

    /// In flutter the animation controller derives from the animation
    /// object, and can be placed wherever the animation is needed. However,
    /// the animation controller has additional functions that allow
    /// us to control the animation. IE: forward() repeat() etc...
    ///
    /// Because animations in flutter are based on the screen
    /// refresh rate, we need to provide vsync for the animation
    /// controller. This is where SingleTickerProviderStateMixin comes
    /// in.
    ///
    /// Remember, per the docs, if you need multiple AnimationControllers
    /// then you need to use a TickerProviderStateMixin instead.
    AnimationController animationController;

    @override
    void initState() {
        super.initState();

        animationController = AnimationController(

            /// The animation must have a set duration. Here it's 2.5 sec.
            ///
            /// NOTE: You need to set it in your head that this duration is 100%
            /// of the animations time, "beginning to end". This will come into
            /// play later, when telling individual parts of the animation
            /// when to start and stop.
            duration: new Duration(milliseconds: 2500),

            /// Again, because the animation rate is locked to the refresh rate,
            /// vsync is an absolute must.
            vsync: this);

        /// Here we set our animation to equal a "Tween".
        ///
        /// A Tween is a *Stateless* object that takes only two
        /// parameters that are mandatory and cannot be null. Begin and End.
        /// By default the range of the animation is from 0-1. The sole job
        /// of a Tween is a to define the mapping from an input range
        /// to an output range.
        ///
        /// This entire setup sounds and seems much like the terms and
        /// methods of keyframe animation.
        ///
        /// You are set the keys and then call the Tween's animate
        /// function, passing in the animation controller.
        animation = Tween(begin: 100.0, end: 200.0).animate(animationController)

        /// To make sure the animation updates every single time a frame
        /// is passed to it, we add a listener and call setState() inside
        /// the listener. It doesn't matter that we're not passing any
        /// parameters to setState, we just need the rebuild.
        ///
        /// The .. used here is called "Cascade Notation". Here is is chaining
        /// the addListener function to the end of the return of the Tween
        /// statement above.
            ..addListener((){
                setState((){});
            });

        /// Having the animationController.forward here causes it
        /// trigger each time that initState is called, but only when
        /// initState is called. This ensure that it is called only once
        /// per build.
        animationController.forward();
    }

    /// This is where the UI is actually created, using the values determined above.
    ///
    /// Here we're animating the height and width of the Container (It's like a DIV). We're not animating the logo, we're animating the parent that contains the logo. This is because of the way layout works. The parent tells the child how much space there is to work with and then the child reports back to the parent how large the child is actually going to be.
    @override
    Widget build(BuildContext context) {
        return new Center(
            child: new Container(
                height: animation.value,
                width: animation.value,
                child: new FlutterLogo(),
            )
        );
    }

    /// Always clean up after yourself by overriding dispose to include getting rid of your controller.
    @override
    void dispose() {
        animationController.dispose();
        super.dispose();
    }
}
