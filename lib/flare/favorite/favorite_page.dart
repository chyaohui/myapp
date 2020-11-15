import 'package:flutter/material.dart';
import 'package:myapp/flare/favorite/page.dart';

Color twoDGrey = Color.fromRGBO(238, 238, 238, 1);

class Heart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flare + Flutter Demo',
        theme:
            ThemeData(primarySwatch: Colors.grey, primaryColor: Colors.white),
        home: FavoritePage());
  }
}
