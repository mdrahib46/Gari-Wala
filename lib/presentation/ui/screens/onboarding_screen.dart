
import 'package:flutter/material.dart';
import 'package:gariwala/presentation/ui/screens/car_list_screen.dart';
import 'package:gariwala/utils/asset_path.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C2B34),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(AssetPath.onboardingImage), fit: BoxFit.fill),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Premium cars.\nEnjoy the luxury",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Premium and prestige car daily rental. \nExperience the thrill at lower price",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 24),
                  SizedBox(width: 340, height: 48, child: ElevatedButton(onPressed: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> CarListScreen()), (route)=> false);
                  }, child: Text("Let's Go"))),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            // Container(child: Icon(Icons.add),)
          ],
        ),
      ),
    );
  }
}
