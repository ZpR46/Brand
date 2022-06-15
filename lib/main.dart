import 'package:brand/providers/brandproviders.dart';
import 'package:brand/screens/brandscreens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BrandProvider(),
        ),
      ],
      child: const MaterialApp(
        home: BrandScreen(),
      ),
    );
  }
}
