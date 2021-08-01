import 'package:campali/auth/ui/login.dart';
import 'package:campali/utils/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:campali/utils/widgets/theme.dart';

void main() {
  runApp(
    // For widgets to be able to read providers, we need to wrap the entire
    // application in a "ProviderScope" widget.
    // This is where the state of our providers will be stored.
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final themeType = watch(ThemeProvider).state;
    return MaterialApp(
      title: 'Campali',
      theme: appTheme(context, themeType),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

final counterProvider = StateProvider((ref) => 0);

// class Home extends HookWidget {
//   final String title;

//   const Home({Key key, this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(this.title)),
//       body: Center(
//         // Consumer is a widget that allows you reading providers.
//         // You could also use the hook "useProvider" if you uses flutter_hooks
//         child: Consumer(builder: (context, watch, _) {
//           final count = watch(counterProvider).state;
//           return Text('$count');
//         }),
//       ),
//       floatingActionButton: FloatingActionButton(
//         // The read method is an utility to read a provider without listening to it
//         onPressed: () => context.read(counterProvider).state++,
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
