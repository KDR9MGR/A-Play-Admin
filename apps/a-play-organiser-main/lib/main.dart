import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/config/supabase_config.dart';
import 'core/config/router_config.dart';
import 'core/theme/app_theme.dart';

void main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    FlutterError.onError = (details) {
      FlutterError.presentError(details);
      debugPrint(details.exceptionAsString());
      if (details.stack != null) {
        debugPrint(details.stack.toString());
      }
    };

    PlatformDispatcher.instance.onError = (error, stack) {
      debugPrint(error.toString());
      debugPrint(stack.toString());
      return true;
    };

    if (SupabaseConfig.supabaseUrl.isEmpty || SupabaseConfig.supabaseAnonKey.isEmpty) {
      throw StateError('Missing Supabase configuration. Provide SUPABASE_URL and SUPABASE_ANON_KEY via --dart-define.');
    }

    await Supabase.initialize(
      url: SupabaseConfig.supabaseUrl,
      anonKey: SupabaseConfig.supabaseAnonKey,
    );

    Supabase.instance.client.auth.onAuthStateChange.listen((data) {
      final event = data.event;
      if (event == AuthChangeEvent.passwordRecovery) {
        router.go('/reset-password');
      }
    });

    runApp(const ProviderScope(child: MainApp()));
  }, (error, stack) {
    debugPrint(error.toString());
    debugPrint(stack.toString());
  });
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'A Play Organiser',
      theme: AppTheme.darkTheme,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
