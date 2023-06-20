import 'package:flutter/material.dart';
import 'package:armspos/views/login.dart';
import 'package:armspos/views/home.dart';
import 'package:armspos/controllers/login_controller.dart';
import 'package:armspos/models/user_model.dart';
import 'package:window_manager/window_manager.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  // Must add this line.
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.hidden,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.setFullScreen(true);
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(const ArmsApp());
} 
class ArmsApp extends StatelessWidget {
  const ArmsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ARMS POS',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: LoginPage(
        controller: LoginController(LoginModel()),
      ),

      routes: {
        '/home': (context) => const HomePage(),
      },
      initialRoute: '/',
    );
  }
}
