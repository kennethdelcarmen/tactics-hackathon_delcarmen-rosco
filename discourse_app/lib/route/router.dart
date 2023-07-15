import 'package:auto_route/auto_route.dart';
import 'package:discourse_app/route/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          initial: true,
        ),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(
          page: HomeRoute.page,
          children: [
            AutoRoute(
              page: DashboardRouter.page,
              children: [
                AutoRoute(page: PickSourceRoute.page),
                AutoRoute(
                  page: PickDestRoute.page,
                )
              ],
            ),
            AutoRoute(
              page: QueryListRouter.page,
              children: [
                AutoRoute(page: QueryListRoute.page),
                AutoRoute(page: AnswerListRoute.page),
                AutoRoute(page: SuggestDirectionRoute.page),
              ],
            ),
            AutoRoute(
              page: BrowseRouter.page,
              children: [
                AutoRoute(page: BrowseRoute.page),
              ],
            )
          ],
        ),
      ];
}
