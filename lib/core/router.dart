import 'package:go_router/go_router.dart';
import 'package:oto_rent/pages/agencies_page.dart';
import 'package:oto_rent/pages/vehicules_page.dart';
import 'package:oto_rent/pages/vehicule_page.dart';

const _initialLocation = '/agencies';
const _vehiculesPath = '/vehicules/:agencyId';

abstract class AppRouter {
  static final router = GoRouter(
    // initialise la bonne page de départ
    initialLocation: _initialLocation,
    routes: [
      GoRoute(
        name: AgenciesPage.name,
        path: _initialLocation,
        builder: (context, state) {
          return const AgenciesPage();
        },
      ),
      GoRoute(
        name: VehiculesPage.name,
        path: _vehiculesPath,
        builder: (context, state) {
          final agencyIdAsString = state.pathParameters['agencyId'];
          final agencyId =
              agencyIdAsString != null ? int.parse(agencyIdAsString) : -1;
          return VehiculesPage(
            agencyId: agencyId,
          );
        },
      ),
      GoRoute(
        name: VehiculePage.name,
        path: "/vehicule/:id",
        builder: (context, state) {
          return VehiculePage(id: state.pathParameters['id']);
        },
      ),
    ],
  );
}
