import 'package:al_quran/app_routes.dart';
import 'package:al_quran/configs/app.dart';
import 'package:al_quran/configs/configs.dart';
import 'package:al_quran/providers/onboarding_provider.dart';
import 'package:al_quran/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

part 'widgets/indicator.dart';
part 'widgets/onboarding_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  List<Widget> pages = [
    const _OnBoardingPage(
      image: StaticAssets.gradLogo,
      text:
          "به راستی که ما قرآن را نازل کردیم و همانا ما نگهبان آن خواهیم بود.",
    ),
    const _OnBoardingPage(
      image: StaticAssets.QuranIcon,
      text:
          "طراحی شده با آخرین و بروزترین سیستم طراحی اپلیکیشن با رابط کاربری جذاب",
    ),
    const _OnBoardingPage(
      image: StaticAssets.QuranIcon,
      text:
          "با قابلیت جستجوی سوره و جز و همچنین قابلیت ذخیره سازی",
    ),
    const _OnBoardingPage(
      image: StaticAssets.QuranIcon,
      text:
        "قابلیت پخش صوتی کل سوره های قرآن کریم با بهترین کیفیت ممکن",
    ),
  ];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<OnBoardingProvider>(context, listen: false).index = 0;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    App.init(context);

    final onBoardingProvider = Provider.of<OnBoardingProvider>(context);

    Object? args = ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              onPageChanged: (int value) => onBoardingProvider.index = value,
              controller: _pageController,
              children: pages.asMap().entries.map((e) {
                return e.value;
              }).toList(),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: Space.hf(0.5),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                      AppTheme.c!.accent,
                    ),
                  ),
                  child: const Text('پرش',style: TextStyle(fontFamily: 'iransans'),),
                  onPressed: () {
                    if (args != null && (args as Map)['route'] == 'drawer') {
                      Navigator.pop(context);
                    } else {
                      Navigator.pushReplacementNamed(context, AppRoutes.home);
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          Space.x2!,
          ...pages.asMap().entries.map(
                (e) => _Indicator(
                  isSelected: onBoardingProvider.index == e.key,
                ),
              ),
          Space.xm!,
          FloatingActionButton(
            backgroundColor: AppTheme.c!.accent,
            child: onBoardingProvider.index == pages.length - 1
                ? const Icon(Icons.check)
                : const Icon(
                    Icons.arrow_forward,
                  ),
            onPressed: () {
              if (onBoardingProvider.index == pages.length - 1) {
                if (args != null && (args as Map)['route'] == 'drawer') {
                  Navigator.pop(context);
                } else {
                  Navigator.pushReplacementNamed(context, AppRoutes.home);
                }
              } else {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              }
            },
          )
        ],
      ),
    );
  }
}
