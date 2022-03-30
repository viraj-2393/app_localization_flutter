import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(
    MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        AppLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('en',''),
        const Locale('hi','')
      ],
      home: MyApp(),
    )
  );
}
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePage();
  }
}

class _MyHomePage extends State{
  Widget _buildText(String text){
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      child: Text(text),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle),
          centerTitle: true,
        ),
        body: Column(
          children: [
            _buildText("Netaji Subhash Chandra Bose"),
            _buildText("Vir Savarkar"),
            _buildText("Shivaji The Great"),

          ],
        ),
    );
  }
}