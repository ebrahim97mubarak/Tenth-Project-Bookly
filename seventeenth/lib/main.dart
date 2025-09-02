import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/functions.dart';
import 'package:seventeenth/core/utils/language.dart';
import 'package:seventeenth/core/utils/mainColors.dart';
import 'package:seventeenth/features/home/presentation/views/detaliseView.dart';
import 'package:seventeenth/features/home/presentation/views/homeView.dart';
import 'package:seventeenth/features/splash/presentation/views/splashView.dart';
import 'package:seventeenth/generated/l10n.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Functions().mediaQuery(context);
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale(Language.english),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: MainColors.kBackGroundColor,
      ),
      routes: {
        ViewsNames.splashView.toString(): (context) => const SplashView(),
        ViewsNames.homeView.toString(): (context) => const HomeView(),
        ViewsNames.detaliseView.toString(): (context) => const DetaliseView(),
      },
      initialRoute: ViewsNames.splashView.toString(),
    );
  }
}
