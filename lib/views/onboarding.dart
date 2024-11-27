import 'package:delivery_app/views/widgets/custom_onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomOnboarding(
      pages: const [
        OnboardingPageModel(
          imagePath: 'assets/images/onboarding1.jpg', // Replace with your image path
          title: 'Select the Favorites Menu',
          description: "Now eat well, don't leave the house. You can choose your favorite food only with one click.",
        ),
        OnboardingPageModel(
          imagePath: 'assets/images/onboarding2.jpg', // Replace with your image path
          title: 'Fast Delivery',
          description: 'Get your food delivered fast and fresh at your doorstep.',
        ),
        OnboardingPageModel(
          imagePath: 'assets/images/onboarding3.png', // Replace with your image path
          title: 'Easy Payments',
          description: 'Pay easily through multiple secure payment options.',
        ),
      ],
      onFinish: () {
        // Navigate to the home screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: const Center(
        child: Text("Welcome to the Delivery App!"),
      ),
    );
  }
}
