import 'package:flutter/material.dart';
import 'package:formation_flutter/l10n/app_localizations.dart';
import 'package:formation_flutter/res/app_colors.dart';
import 'package:formation_flutter/res/app_theme_extension.dart';
import 'package:formation_flutter/screens/product_page.dart';
import 'package:formation_flutter/model/product.dart';

void main() {
  final fakeProduct = generateProduct();

  runApp(ProductInh(product: fakeProduct, child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        extensions: [OffThemeExtension.defaultValues()],
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.nutriscoreA),
        fontFamily: 'Avenir',
        textTheme: const TextTheme(headlineMedium: TextStyle()),
      ),
      debugShowCheckedModeBanner: false,
      home: ProductPage(),
    );
  }
}
