import 'package:batterylevel/first_view.dart';
import 'package:batterylevel/home.dart';
import 'package:batterylevel/second_view.dart';
import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final QuickActions quickActions = const QuickActions();

  @override
  void initState() {
    super.initState();

    quickActions.initialize((shortcutType) {
      setState(() {});

      if (shortcutType == 'action_home') {
        _navigateTo(const MyHomePage());
      } else if (shortcutType == 'action_first') {
        _navigateTo(const FirstView());
      } else if (shortcutType == 'action_second') {
        _navigateTo(const Second());
      }
    });

    quickActions.setShortcutItems([
      const ShortcutItem(
        type: 'action_home',
        localizedTitle: 'Home',
      ),
      const ShortcutItem(
        type: 'action_first',
        localizedTitle: 'First',
      ),
      const ShortcutItem(
        type: 'action_second',
        localizedTitle: 'Second',
      ),
    ]);
  }

  void _navigateTo(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
