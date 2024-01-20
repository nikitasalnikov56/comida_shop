import 'package:auto_route/auto_route.dart';
import 'package:comida/ui/pages/carousel_widget.dart';
import 'package:comida/ui/pages/login_page.dart';
import 'package:comida/ui/pages/signup_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: StartRoute.page, path: '/'),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: LoginRoute.page),
      ];
}
