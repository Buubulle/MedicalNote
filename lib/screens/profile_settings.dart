import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;

import '../component/component.dart';

class SettingsProfilePage extends StatefulWidget {
  const SettingsProfilePage({Key? key}) : super(key: key);

  @override
  State<SettingsProfilePage> createState() => _SettingsProfilePageState();
}

class _SettingsProfilePageState extends State<SettingsProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _Appbar());
  }

  _Appbar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      flexibleSpace: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: kDefaultcolor, elevation: 0),
              child: Row(
                children: [
                  Transform.rotate(
                    angle: -math.pi / 1,
                    child: SvgPicture.asset(
                      'assets/icons/right-thin-chevron-svgrepo-com.svg',
                      color: Colors.white,
                      height: 20,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            Text(
              'Profile',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            SizedBox(
              width: 3,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: kDefaultcolor, elevation: 0),
              child: Text(
                'Done',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      backgroundColor: kDefaultcolor,
    );
  }
}
