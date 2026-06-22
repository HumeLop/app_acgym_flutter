import 'package:app_acgym/core/router/app_router.dart';
import 'package:app_acgym/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AcGymApp extends StatelessWidget {
  const AcGymApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(theme: AppTheme.dark, routerConfig: appRouter);
  }
}
