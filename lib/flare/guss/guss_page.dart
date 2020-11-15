import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/flare/guss/character_controller.dart';
import 'package:myapp/flare/guss/login_character.dart';
import 'package:myapp/flare/guss/signin_button.dart';
import 'package:myapp/flare/guss/tracking_text_input.dart';

class GussPage extends StatefulWidget {
  final String title;

  const GussPage({Key key, this.title}) : super(key: key);

  @override
  _GussPageState createState() => _GussPageState();
}

class _GussPageState extends State<GussPage> {
  final CharacterController _characterController =
      CharacterController(projectGaze: LoginCharacter.projectGaze);

  String _password;
  @override
  Widget build(BuildContext context) {
    EdgeInsets devicePadding = MediaQuery.of(context).padding;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(93, 142, 155, 1.0),
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  // Box decoration takes a gradient
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    // Add one stop for each color. Stops should increase from 0
                    // to 1
                    stops: const [0.0, 1.0],
                    colors: [
                      Color.fromRGBO(170, 207, 211, 1.0),
                      Color.fromRGBO(93, 142, 155, 1.0),
                    ],
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                    left: 20.0, right: 20.0, top: devicePadding.top + 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    LoginCharacter(controller: _characterController),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              TrackingTextInput(
                                label: "Email",
                                hint: "What's your email address?",
                                onCaretMoved: (Offset caret) {
                                  _characterController.lookAt(caret);
                                },
                              ),
                              TrackingTextInput(
                                label: "Password",
                                hint: "Try 'bears'...",
                                isObscured: true,
                                onCaretMoved: (Offset caret) {
                                  _characterController.coverEyes(caret != null);
                                  _characterController.lookAt(null);
                                },
                                onTextChanged: (String value) {
                                  _password = value;
                                },
                              ),
                              SigninButton(
                                child: Text("Sign In",
                                    style: TextStyle(
                                        fontFamily: "RobotoMedium",
                                        fontSize: 16,
                                        color: Colors.white)),
                                onPressed: _login,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> checkCredentials() async {
    return _password == "bears";
  }

  Future<void> _login() async {
    // Clear focus from text fields.
    FocusScope.of(context).requestFocus(FocusNode());
    // Bring hands down
    _characterController.coverEyes(false);

    // Check password
    bool valid = await checkCredentials();
    if (valid) {
      _characterController.rejoice();
    } else {
      _characterController.lament();
    }
  }
}
