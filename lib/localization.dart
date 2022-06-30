import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
class Localizaton extends StatefulWidget {
  const Localizaton({Key? key}) : super(key: key);

  @override
  State<Localizaton> createState() => _LocalizatonState();
}

class _LocalizatonState extends State<Localizaton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('welcome').tr(),
            ElevatedButton(onPressed: (){context.setLocale(Locale('en', 'US'));}, child: Text('en')),
            ElevatedButton(onPressed: (){context.setLocale(Locale('ru', 'RU'));}, child: Text('ru')),
            ElevatedButton(onPressed: (){context.setLocale(Locale('uz', 'UZ'));}, child: Text('uz')),
            ElevatedButton(onPressed: (){context.setLocale(Locale('fr', 'FR'));}, child: Text('fr')),
            ElevatedButton(onPressed: (){context.setLocale(Locale('ko', 'KR'));}, child: Text('kr')),
            ElevatedButton(onPressed: (){context.setLocale(Locale('ja', 'JP'));}, child: Text('ja')),
          ],
        )
      ),
    );
  }
}
