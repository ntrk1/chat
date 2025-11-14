


import 'package:chat/pages/pages.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/chat',
      builder: (context, state) => ChatPage(),
      ),
      GoRoute(
      path: '/login',
      builder: (context, state) => LoginPage(),
      ),
      GoRoute(
      path: '/register',
      builder: (context, state) => RegisterPage(),
      ),
      GoRoute(
      path: '/loading',
      builder: (context, state) => LoadingPage(),
      ),
      GoRoute(
      path: '/user',
      builder: (context, state) => UserPage(),
      ),
  ]
  );