import 'package:auto_route/auto_route_annotations.dart';

import '../ui/views/startup/start_up_view.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: StartUpView, initial: true),
])
class $Router {}