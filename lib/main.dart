import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mantra_assignment/home.dart';
import 'package:mantra_assignment/util/prefs_util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefService.instance.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: CupertinoApp(home: Home()));
  }
}
