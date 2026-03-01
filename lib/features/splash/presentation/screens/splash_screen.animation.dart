part of 'splash_screen.dart';

extension _SplashAnimation on _SplashScreenState {
  void _generateSparkles() {
    for (int i = 0; i < 8; i++) {
      final angle = (i / 8) * 2 * pi;
      final distance = 100.0 + (_random.nextDouble() * 40);
      _sparkles.add(Sparkle(
        size: 12 + (_random.nextDouble() * 6),
        delay: _random.nextDouble() * .4,
        offset: Offset(cos(angle) * distance, sin(angle) * distance),
      ));
    }
  }

  List<Widget> _buildSparkles() => _sparkles.map((sparkle) {
    final delayedProgress = (_sparkleController.value - sparkle.delay)
      .clamp(0.0, 1.0);

    final opacity = delayedProgress > 0 ? _sparkleOpacity.value : 0.0;
    final scale = delayedProgress > 0 ? _sparkleScale.value : 0.0;

    return Transform.translate(
      offset: sparkle.offset * scale,
      child: Opacity(
        opacity: opacity,
        child: StarSparkle(size: sparkle.size),
      ),
    );
  }).toList();

  Future<void> _startSequence() async {
    // Phase 1: Drop
    await _dropController.forward();
    await Future.delayed(const Duration(milliseconds: 200));

    // Phase 2: Shake
    await _shakeController.forward();
    await Future.delayed(const Duration(milliseconds: 200));

    // Phase 3: Sparkles
    await _sparkleController.forward();
    await Future.delayed(const Duration(milliseconds: 400));

    if (mounted) {
      // Fades out to the onboarding screen
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          settings: const RouteSettings(name: '/onboarding'),
          pageBuilder: (_, animation, _) => FadeTransition(
            opacity: animation,
            child: const OnboardingScreen(),
          ),
          transitionDuration: const Duration(milliseconds: 1000),
          transitionsBuilder: (_, animation, _, child) => FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),
      );
    }
  }

  void _setupAnimations() {
    // Phase 1: Drop
    _dropController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1,),
    );

    _dropAnimation = Tween<double>(begin: -600, end: 0).animate(
      CurvedAnimation(parent: _dropController, curve: Curves.bounceOut),
    );

    // Phase 2: Shake
    _shakeController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2,),
    );

    _shakeAnimation = TweenSequence<double>([
      // Pause
      TweenSequenceItem(
        tween: Tween(begin: 0, end: 0),
        weight: 10,
      ),

      // Shake
      TweenSequenceItem(
        tween: Tween(begin: .0, end: .2).chain(
          CurveTween(curve: Curves.easeInOut)
        ),
        weight: 4,
      ),
      TweenSequenceItem(
        tween: Tween(begin: .2, end: -.2).chain(
          CurveTween(curve: Curves.easeInOut)
        ),
        weight: 4,
      ),
      TweenSequenceItem(
        tween: Tween(begin: -.2, end: .2).chain(
          CurveTween(curve: Curves.easeInOut)
        ),
        weight: 4,
      ),
      TweenSequenceItem(
        tween: Tween(begin: .2, end: .0).chain(
          CurveTween(curve: Curves.easeInOut)
        ),
        weight: 4,
      ),

      // Pause
      TweenSequenceItem(
        tween: Tween(begin: 0, end: 0),
        weight: 20,
      ),

      // Repeat shake
      TweenSequenceItem(
        tween: Tween(begin: .0, end: .2).chain(
          CurveTween(curve: Curves.easeInOut)
        ),
        weight: 4,
      ),
      TweenSequenceItem(
        tween: Tween(begin: .2, end: -.2).chain(
          CurveTween(curve: Curves.easeInOut)
        ),
        weight: 4,
      ),
      TweenSequenceItem(
        tween: Tween(begin: -.2, end: .2).chain(
          CurveTween(curve: Curves.easeInOut)
        ),
        weight: 4,
      ),
      TweenSequenceItem(
        tween: Tween(begin: .2, end: .0).chain(
          CurveTween(curve: Curves.easeInOut)
        ),
        weight: 4,
      ),
    ]).animate(_shakeController);

    // Phase 3: Sparkles
    _sparkleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _sparkleOpacity = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween(begin: 0, end: 1),
        weight: 20,
      ),
      TweenSequenceItem(
        tween: Tween(begin: 1, end: 1),
        weight: 60,
      ),
      TweenSequenceItem(
        tween: Tween(begin: 1, end: 0),
        weight: 20,
      ),
    ]).animate(_sparkleController);

    _sparkleScale = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _sparkleController, curve: Curves.elasticOut),
    );
  }
}
