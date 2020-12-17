import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:advanced_flutter_chat_app/app/router.gr.dart' as router;
import 'locator.dart';
import 'logger.dart';
import 'provider_setup.dart';
import 'ui/views/startup/start_up_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLogger();
  await setupLocator();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: router.Router().onGenerateRoute,
        navigatorKey: locator<NavigationService>().navigatorKey,
        home: StartUpView(),
      ),
    );
  }
}
