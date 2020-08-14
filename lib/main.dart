import 'package:flutter/material.dart';
import 'package:flutter_line_sdk/flutter_line_sdk.dart';

import 'src/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
//  1654395218
  LineSDK.instance.setup('1654715057').then((_) {
    print('LineSDK Prepared');
  });
  runApp(App());
}