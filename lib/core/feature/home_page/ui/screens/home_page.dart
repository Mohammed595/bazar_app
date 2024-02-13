import 'package:bazar_app/core/provoders/auth_provider.dart';
import 'package:bazar_app/core/routing/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final userAsStream = ref.watch(authStateChange);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${userAsStream.value?.email ?? 'null'}'),
            IconButton(
              onPressed: () {
                // ref.read(authProvider).signOut();
                // print('Done sign out');
                Navigator.pushNamed(context, Routers.splashScreen);
              },
              icon: const Icon(Icons.login),
            )
          ],
        ),
      ),
    );
  }
}
