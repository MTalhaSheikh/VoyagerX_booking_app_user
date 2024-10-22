import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:voyagerx/services/provider_services/splash_provider.dart';

import 'View/Splash/splash_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SplashProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'VoyagerX',
        debugShowCheckedModeBanner: false,
        home: SplashPage());
  }
}
