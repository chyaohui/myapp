import "package:flare_flutter/flare_actor.dart";
import "package:flare_flutter/flare_cache_builder.dart";
import "package:flutter/material.dart";
import 'package:flutter/services.dart';

class FlareSimplePage extends StatefulWidget {
  FlareSimplePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SimplePageState createState() => _SimplePageState();
}

class _SimplePageState extends State<FlareSimplePage> {
  bool _useAA = true;
  String _animationName = "idle";
  // final asset = AssetFlare(bundle: rootBundle, name: "assets/Filip.flr");

  /// Toggle antialiasing on [FlareActor]
  void _toggleAntialiasing() {
    setState(() {
      _useAA = !_useAA;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                height: 300,
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: FlareActor("assets/rive/Filip.flr", //Animals.flr"
                    alignment: Alignment.center,
                    isPaused: _useAA,
                    fit: BoxFit.cover,
                    animation: _animationName)),
            // child: FlareCacheBuilder(
            //   [asset],
            //   builder: (BuildContext context, bool isWarm) {
            //     return !isWarm
            //         ? Container(child: Text("NO"))
            //         : FlareActor.asset(
            //             asset,
            //             alignment: Alignment.center,
            //             fit: BoxFit.contain,
            //             animation: _animationName,
            //             antialias: _useAA,
            //           );
            //   },
            // ),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _toggleAntialiasing,
          child: Icon(
              _useAA ? Icons.center_focus_strong : Icons.center_focus_weak)),
    );
  }
}
