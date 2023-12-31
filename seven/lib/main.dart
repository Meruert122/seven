import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:seven/generated/codegen_loader.g.dart';
import 'package:seven/pages/register_form_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: [Locale('kk'), Locale('en'), Locale('ru')],
      path: 'assets/translations',
      fallbackLocale: Locale('ru'),
      assetLoader: CodegenLoader(),
      child: MyApp()
    ),
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
      home: const SignUpPage(),
    );
  }
}