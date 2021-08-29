import 'package:auto_route/annotations.dart';
import 'package:pharma_flutter/presentation/drugs/drug_detail_page.dart';
import 'package:pharma_flutter/presentation/drugs/drugs_overview_page.dart';
import 'package:pharma_flutter/presentation/drugs/my_reviews_page.dart';
import 'package:pharma_flutter/presentation/drugs/pharmacy_page.dart';
import 'package:pharma_flutter/presentation/sign_in/sign_in_page.dart';
import 'package:pharma_flutter/presentation/sign_in/sign_up_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: PharmaOverviewPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: SignUpPage),
    AutoRoute(page: DrugDetailPage),
    AutoRoute(page: MyReviewsPage),
    AutoRoute(page: PharmacyPage),
  ],
)
class $AppRouter {}
