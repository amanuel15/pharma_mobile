import 'package:auto_route/annotations.dart';
import 'package:pharma_flutter/presentation/drugs/drugs_overview_page.dart';
import 'package:pharma_flutter/presentation/sign_in/sign_in_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: PharmaOverviewPage, initial: true),
    AutoRoute(page: SignInPage),
  ],
)
class $AppRouter {}
