import 'package:myapp/custom_widgets/button_round_with_shadow.dart';
import 'package:myapp/custom_widgets/contra_button.dart';
import 'package:myapp/custom_widgets/custom_app_bar.dart';
import 'package:myapp/login/contra_text.dart';
import 'package:myapp/menu/settings.dart';
import 'package:myapp/menu/settings_card_item.dart';
import 'package:myapp/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPageOne extends StatefulWidget {
  @override
  _SettingsPageOneState createState() => _SettingsPageOneState();
}

class _SettingsPageOneState extends State<SettingsPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ButtonRoundWithShadow(
                      size: 48,
                      borderColor: wood_smoke,
                      color: white,
                      callback: () {
                        Navigator.pop(context);
                      },
                      shadowColor: wood_smoke,
                      iconPath: "assets/icons/arrow_back.svg"),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ContraText(
                size: 27,
                color: wood_smoke,
                alignment: Alignment.center,
                text: "Settings",
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: 20,
              ),
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 12),
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24),
              child: SettingsCardItem(
                setting: Settings(
                    bgColor: pink_salomn,
                    title: "Happiness",
                    text:
                        "Colorful and Beautiful life if you want to enjoy every moment.",
                    textColor: white,
                    enable: true),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24),
              child: SettingsCardItem(
                setting: Settings(
                    bgColor: foam,
                    title: "Sadness",
                    text: "Sometime you don’t want to talk.",
                    textColor: wood_smoke,
                    enable: false),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24),
              child: SettingsCardItem(
                setting: Settings(
                    bgColor: bareley_white,
                    title: "Friends",
                    text: "I’ll not help you to finish this.",
                    textColor: wood_smoke,
                    enable: false),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24),
              child: ContraButton(
                color: wood_smoke,
                height: 60,
                isPrefix: false,
                isSuffix: false,
                text: "Confirm",
                textColor: white,
                textSize: 21,
                shadowColor: wood_smoke,
                borderColor: wood_smoke,
                callback: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
