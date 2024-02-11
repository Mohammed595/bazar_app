import 'package:bazar_app/core/feature/testFeature/data/test_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TEstScreen extends ConsumerStatefulWidget {
  const TEstScreen({super.key});

  @override
  _TEstScreenState createState() => _TEstScreenState();
}

class _TEstScreenState extends ConsumerState<TEstScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final getD = ref.watch(dataProvider);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: getD.when(
          data: (data) {
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final person = data[index];
                return ListTile(
                  title: Text(person.name),
                  subtitle: Text(person.age.toString()),
                );
              },
            );
          },
          error: (error, stackTrace) => Text('Error: $error'),
          loading: () => CircularProgressIndicator(),
        ),
      ),
    );
  }
}
