import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';


GetIt locator = GetIt.instance;

/// Setup function that is run before the App is run.
///   - Sets up singletons that can be called from anywhere
/// in the app by using locator<Service>() call.
///   - Also sets up factor methods for view models.
Future<void> setupLocator() async {
  // Services
  locator.registerLazySingleton<NavigationService>(
        () => NavigationService(),
  );
}