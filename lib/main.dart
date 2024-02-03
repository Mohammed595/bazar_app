import 'package:bazar_app/core/routing/routers.dart';
import 'package:bazar_app/core/routing/routing.dart';
import 'package:bazar_app/core/servers/prefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefnsSirves.create();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return const MaterialApp(
            onGenerateRoute: AppRouter.onGenerateRoutes,
            initialRoute: Routers.splashScreen,
          );
        });
  }
}
