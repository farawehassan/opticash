import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:opticash/ui/ui.dart';

@RoutePage()
class BaseScreen extends HookWidget {
  const BaseScreen({
    Key? key,
    @PathParam('index') this.index = 0,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState<int>(0);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return SafeArea(
      top: false,
      bottom: false,
      child: ValueListenableBuilder<int>(
        valueListenable: currentIndex,
        builder: (context, index, child) {
          return Scaffold(
            body: Builder(
              builder: (context) {
                switch (index) {
                  case 0:
                    return const HomeScreen();
                  case 1:
                    return const HomeScreen();
                  case 2:
                    return const HomeScreen();
                  case 3:
                    return const HomeScreen();
                  case 4:
                    return const HomeScreen();
                  default:
                    return Container();
                }
              },
            ),
            bottomNavigationBar: BottomBar(
              selected: currentIndex.value,
              onTap: (value) => currentIndex.value = value,
            ),
          );
        },
      ),
    );
  }
}
