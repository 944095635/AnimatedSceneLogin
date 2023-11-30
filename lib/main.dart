import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_qq_login/window/frame_window.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  if (Platform.isWindows) {
    WidgetsFlutterBinding.ensureInitialized();
    // 必须加上这一行。
    await windowManager.ensureInitialized();

    WindowOptions windowOptions = const WindowOptions(
      size: Size(440, 335),
      maximumSize: Size(440, 335),
      center: true,
      skipTaskbar: false,
      backgroundColor: Colors.transparent,
      titleBarStyle: TitleBarStyle.hidden,
    );

    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    });

    await windowManager.setResizable(false);
    await windowManager.setMaximizable(false);
    await windowManager.setBrightness(Brightness.light);
  }

  //640*490
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "微软雅黑",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            minimumSize: const MaterialStatePropertyAll(
              Size(0, 46),
            ),
            backgroundColor: const MaterialStatePropertyAll(
              Colors.white10,
            ),
            surfaceTintColor:
                const MaterialStatePropertyAll(Colors.transparent),
            elevation: const MaterialStatePropertyAll(0),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            foregroundColor: const MaterialStatePropertyAll(Colors.white),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.only(bottom: 10, left: 14),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF12B7F5),
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x33E5E5E5),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const FrameWindow(),
    );
  }
}
