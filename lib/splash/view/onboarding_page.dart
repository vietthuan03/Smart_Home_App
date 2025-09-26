import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/onboarding_item.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<OnboardingItem> items = [
    OnboardingItem(
      title: 'Convenience',
      description: 'Control your devices in one app',
      image: 'assets/images/splash_1.png',
    ),
    OnboardingItem(
      title: 'Stay Informed',
      description: 'Instant notifications and alerts',
      image: 'assets/images/splash_2.png',
    ),
    OnboardingItem(
      title: 'Automate',
      description: 'Quick actions and smart scenes',
      image: 'assets/images/splash_2.png',
    ),
  ];

  Future<void> _nextPage() async {
    if (_currentIndex < items.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      await Navigator.of(context).pushReplacementNamed('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemCount: items.length,
        onPageChanged: (index) => setState(() => _currentIndex = index),
        itemBuilder: (context, index) {
          final item = items[index];
          return Stack(
            fit: StackFit.expand,
            children: [
              /// Background image
              Image.asset(
                item.image,
                fit: BoxFit.cover,
              ),

              /// Overlay gradient (optional)
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.5),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                  ),
                ),
              ),

              /// Text overlay
              Positioned(
                left: 24,
                right: 24,
                bottom: 140,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      item.description,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),

      /// Bottom sheet
      bottomSheet: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              child: Text(
                'Skip',
                style: TextStyle(fontSize: 16),
              ),
              onPressed: () =>
                  Navigator.of(context).pushReplacementNamed('/login'),
            ),
            Row(
              children: List.generate(items.length, (index) {
                return Container(
                  margin: const EdgeInsets.all(4),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: _currentIndex == index
                        ? Colors.blue
                        : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
            TextButton(
              child: Text(
                _currentIndex == items.length - 1 ? 'Start' : 'Next',
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              onPressed: _nextPage,
            ),
          ],
        ),
      ),
    );
  }
}
