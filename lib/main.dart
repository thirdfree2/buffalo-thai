import 'package:buffalo_thai/mainwrapper.dart';
import 'package:buffalo_thai/providers/selected_buffalo.dart';
import 'package:buffalo_thai/providers/selected_farm.dart';
import 'package:buffalo_thai/providers/selected_farm_owner.dart';
import 'package:buffalo_thai/providers/selected_region.dart';
import 'package:buffalo_thai/view/splash/main_splash_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SelectedRegion()),
        ChangeNotifierProvider(create: (_) => SelectedFarm()),
        ChangeNotifierProvider(create: (_) => SelectedBuffalo()),
        ChangeNotifierProvider(create: (_) => SelectedFarmOwner())
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.chonburiTextTheme(textTheme)
      ),
      home: const MainSplashView(),
    );
  }
}
