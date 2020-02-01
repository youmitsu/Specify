library specify;

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Specify extends StatelessWidget {
  final Widget android;
  final Widget ios;

  Specify({
    @required this.android,
    @required this.ios,
  })  : assert(android != null),
        assert(ios != null);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return android;
    } else if (Platform.isIOS) {
      return ios;
    } else {
      throw PlatformException(
          code: 'E01', message: 'This platform is not supported.');
    }
  }
}
