import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/pages/inicio_page.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_i18n/loaders/decoders/json_decode_strategy.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        FlutterI18nDelegate(
          translationLoader: FileTranslationLoader(basePath: 'assets/i18n', decodeStrategies: [JsonDecodeStrategy()] ), // Set Translation JSONs path & DecodeStrategy
          missingTranslationHandler: (key, locale) {
            print("--- Missing Key: $key, languageCode: ${locale.languageCode}");   // Function to see what translation// keys are missing.
          },
        ),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      builder: FlutterI18n.rootAppBuilder(),
      initialRoute: 'inicio',
      routes: {
        'inicio'     : (BuildContext context )  => InicioPage(),
       // 'login'      : (BuildContext context )  => RegistroPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(FlutterI18n.translate(context, 'title')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              FlutterI18n.translate(context, 'title')
            ),
          ],
        ),
      ),
    );
  }
}
