import 'package:desi/utils/responsive.dart';
import 'package:desi/widgets/icon_container.dart';
import 'package:desi/widgets/login_form.dart';
import "package:flutter/material.dart";

import '../widgets/circle.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final double pinkSize = responsive.wp(85);
    final double amberSize = responsive.wp(55);

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: responsive.height,
            color: Colors.white30,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  top: -(pinkSize) * 0.25,
                  right: -(pinkSize) * 0.15,
                  child: Circle(
                    colors: [Colors.red, Colors.redAccent.shade700],
                    size: pinkSize,
                  ),
                ),
                Positioned(
                  top: -(amberSize) * 0.2,
                  left: -(amberSize) * 0.2,
                  child: Circle(
                    colors: [Colors.deepOrange, Colors.amber],
                    size: amberSize,
                  ),
                ),
                Positioned(
                  top: pinkSize * 0.44,
                  child: Column(
                    children: [
                      IconContainer(
                        size: responsive.wp(34),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "wherever you are,\nyou can login here",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: responsive.dp(2.44),
                        ),
                      ),
                    ],
                  ),
                ),
                LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
