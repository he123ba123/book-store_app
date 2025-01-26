import 'package:bookstore_app/features/view/screen/book_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 6),
      () => {
        if (mounted)
          {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            )
          }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SpinKitChasingDots(
        color: Colors.deepPurple,
        size: 200,
      ),
    );
  }
}
