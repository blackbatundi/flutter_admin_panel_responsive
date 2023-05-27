import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ui_admin_responsive/constants.dart';
import 'package:ui_admin_responsive/controllers/MenuAppController.dart';
import 'package:ui_admin_responsive/screens/main/main_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuAppController(),
          ),
        ],
        child: MainScreen(),
      ),
    );
  }
}
