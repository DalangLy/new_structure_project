import 'package:auto_route/auto_route.dart';
import '../../features/tax_type/tax_type_export.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: TaxTypeWrapperPage,
      initial: true,
      children: <AutoRoute>[
        AutoRoute(
          path: '',
          page: TaxTypePage,
        ),
        AutoRoute(
          path: 'add',
          page: AddTaxTypePage,
        ),
        AutoRoute(
          path: 'edit/:id',
          page: EditTaxTypePage,
        ),
        AutoRoute(
          path: 'details/:id',
          page: TaxTypeDetailsPage,
        ),
      ],
    ),
  ],
)
class $AppRouter {}