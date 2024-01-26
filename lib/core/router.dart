import 'package:go_router/go_router.dart';
import 'package:oto_rent/pages/home_page.dart';
import 'package:oto_rent/pages/vehicule_page.dart';

const _initialLocation = '/';

abstract class AppRouter {
  static final router = GoRouter(
    // initialise la bonne page de départ
    initialLocation: _initialLocation,
    routes: [
      GoRoute(
        name: HomePage.name,
        path: _initialLocation,
        builder: (context, state) {
          return const HomePage();
        },
      ),
      GoRoute(
        name: VehiculePage.name,
        path: "/vehicule/:id",
        builder: (context, state) {
          return VehiculePage(id: state.pathParameters['id']);
        },
      ),
      // GoRoute(
      //     name: IngredientPage.name,
      //     path: '/ingredient/:id',
      //     builder: (context, state) {
      //       final id = state.pathParameters['id']!;
      //       final category = IngredientCategory.values.firstWhere(
      //         (element) => element.name == id,
      //         orElse: () => IngredientCategory.none,
      //       );
      //       return IngredientPage(
      //         ingredientCategory: category,
      //       );
      //     }),
    ],
  );
}
