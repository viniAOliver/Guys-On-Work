import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guys_on_work/design/app_theme.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    // Hide both the status bar and the navigation bar.
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    // Initialize the animation controller.
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    // Show both the status bar and the navigation bar when disposed.
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );

    // Dispose the animation controller.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    // Start the animation controller.
    _controller
      ..duration = const Duration(seconds: 3)
      ..forward()
      ..repeat();

    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'assets/images/animations/talk.json',
          height: 150,
          frameBuilder: (context, child, composition) => AnimatedOpacity(
            opacity: composition == null ? 0 : 1,
            duration: const Duration(seconds: 3),
            onEnd: () => Navigator.of(context).pushReplacementNamed('/welcome'),
            curve: Curves.fastOutSlowIn,
            child: child,
          ),
          controller: _controller,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppTheme.transparentColor,
        elevation: 0,
        height: 50,
        child: Center(
          child: Text(
            'Project Guys on Work',
            style: AppTheme.darkTheme.textTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}
