import 'package:flutter/material.dart';
import 'package:flutter_interview/core/services/navigation/route_path.dart';
import 'package:flutter_interview/shared/presentation/widgets/error_widget.dart';
import 'package:go_router/go_router.dart';

abstract class AppNavigation {

  static final GoRouter router = GoRouter(
    errorPageBuilder: (context, state) => MaterialPage(
        child: ErrorMessage(
      errorMessage: state.error!.toString(),
    )),
   // initialLocation: RoutePath.signInPage,
    routes: <RouteBase>[
     /* GoRoute(
        path: RoutePath.signInPage,
        builder: (context, state) => SignInScreen(key: state.pageKey),
      ),*/
    ],
  );
}
