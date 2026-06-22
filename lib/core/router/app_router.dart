import 'package:app_acgym/app/app_shell.dart';
import 'package:app_acgym/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:app_acgym/features/members/presentation/pages/members_page.dart';
import 'package:app_acgym/features/payments/presentation/pages/payments_page.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/dashboard',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          AppShell(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(path: '/dashboard', builder: (_, _) => DashboardPage()),
          ],
        ),
        StatefulShellBranch(
          routes: [GoRoute(path: '/members', builder: (_, _) => MembersPage())],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(path: '/payments', builder: (_, _) => PaymentsPage()),
          ],
        ),
        StatefulShellBranch(
          routes: [GoRoute(path: '/admin', builder: (_, _) => PaymentsPage())],
        ),
      ],
    ),
  ],
);
