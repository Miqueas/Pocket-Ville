import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pocket_ville/core/presentation/screens/base_screen.dart';
import 'package:pocket_ville/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:pocket_ville/features/splash/data/models/sparkle.dart';
import 'package:pocket_ville/features/splash/presentation/widgets/star_sparkle.dart';

// Logic behind the animation are in this file to improve readability. Check it
// out if you want to understand how the animation works or to make changes to
// it.
part 'splash_screen.animation.dart';

final class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

final class _SplashScreenState
extends State<SplashScreen>
with TickerProviderStateMixin
{
  late final AnimationController _dropController;
  late final AnimationController _shakeController;
  late final AnimationController _sparkleController;

  late final Animation<double> _dropAnimation;
  late final Animation<double> _shakeAnimation;
  late final Animation<double> _sparkleOpacity;
  late final Animation<double> _sparkleScale;

  final _sparkles = <Sparkle>[];
  final _random = Random();

  @override
  void initState() {
    super.initState();
    _generateSparkles();
    _setupAnimations();
    _startSequence();
  }

  @override
  void dispose() {
    _dropController.dispose();
    _shakeController.dispose();
    _sparkleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BaseScreen(child: AnimatedBuilder(
    animation: Listenable.merge([
      _dropController,
      _shakeController,
      _sparkleController,
    ]),
    builder: (context, child) => Center(
      child: Stack(
        alignment: .center,
        clipBehavior: .none,
        children: [
          // Sparkles behind the ball
          ..._buildSparkles(),
          // Pokéball
          Transform.translate(
            offset: Offset(_shakeAnimation.value * 100, _dropAnimation.value),
            child: Transform.rotate(
              angle: _shakeAnimation.value,
              child: SvgPicture.asset('assets/splash/pokeball.svg',),
            ),
          ),
        ],
      ),
    ),
  ),);
}