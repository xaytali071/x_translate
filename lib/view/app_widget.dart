import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_translate/controller/providers.dart';
import 'package:x_translate/view/page/home_page.dart';

class AppWidget extends ConsumerStatefulWidget {
  const AppWidget({super.key});

  @override
  ConsumerState<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends ConsumerState<AppWidget>
    with WidgetsBindingObserver {
  @override
  Widget build(
    BuildContext context,
  ) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ref.watch(trProvider).isDark
              ? ThemeData.dark().copyWith(
                  appBarTheme:
                      const AppBarTheme(backgroundColor: Colors.white10,))
              : ThemeData.light().copyWith(
                  appBarTheme: const AppBarTheme(
                      backgroundColor: Colors.green,
                      iconTheme: IconThemeData(color: Colors.white))),
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        );
      },
    );
  }
}
