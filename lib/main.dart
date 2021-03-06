
import 'package:awesome/localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(child: MyApp(), supportedLocales: [Locale('en','US'),Locale('ru','RU'),Locale('uz','UZ',),Locale('ja','JP'),Locale('ko','KR'),Locale('fr','FR')], path: 'assets/translations',
    fallbackLocale: Locale('en','US'),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Localizaton()
    );
  }
}
