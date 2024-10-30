import 'package:flutter/material.dart';

import 'core/infrastructure/resource/service_locator.dart';
import 'features/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDependencies();
  runApp(const MyApp());
}
