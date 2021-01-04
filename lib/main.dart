import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'home.dart';

main(){
  runApp( EasyLocalization(
    path: 'assets/langs',
    supportedLocales: [
      Locale('en','US'),
      Locale('ar','EG'),
    ],
    fallbackLocale: Locale('en','US'),
    saveLocale: true,
    child: MyApp() ,
  ),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      home: Home(),
    );
  }
}


