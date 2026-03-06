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
    // Drop animation
    await _dropController.forward();
    await Future.delayed(const Duration(milliseconds: 400));

    // Application startup logic
    final startupFuture = ref.read(startupProvider.future);
    var startupCompleted = false;
    startupFuture.then(
      (_) => startupCompleted = true,
      onError: (_) => startupCompleted = true,
    );

    // Shake while app is starting up
    do {
      _shakeController.reset();
      await _shakeController.forward();
    } while (!startupCompleted);

    // Sparkles
    await _sparkleController.forward();
    await Future.delayed(const Duration(milliseconds: 400));

    final favorites = await ref.read(favoritesProvider.future);
    final hasFavorites = favorites.isNotEmpty;

    if (mounted) {
      final targetRoute = hasFavorites ? AppRouter.home : AppRouter.onboarding;
      final targetScreen = switch (hasFavorites) {
        true => const RootScreen(),
        false => const OnboardingScreen(),
      };

      if (targetRoute == AppRouter.home) {
        Navigator.of(context).pop();
      } else {
        Navigator.of(context).pushReplacement(
          PageRouteBuilder(
            settings: RouteSettings(name: targetRoute),
            pageBuilder: (_, animation, _) => FadeTransition(
              opacity: animation,
              child: targetScreen,
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
  }

  void _setupAnimations() {
    // Phase 1: Drop
    _dropController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400,),
    );

    _dropAnimation = Tween<double>(begin: -600, end: 0).animate(
      CurvedAnimation(parent: _dropController, curve: Curves.bounceOut),
    );

    // Phase 2: Shake
    _shakeController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _shakeAnimation = TweenSequence<double>([
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
        tween: Tween(begin: .2, end: -.2).chain(
          CurveTween(curve: Curves.easeInOut)
        ),
        weight: 4,
      ),
      TweenSequenceItem(
        tween: Tween(begin: -.2, end: .0).chain(
          CurveTween(curve: Curves.easeInOut)
        ),
        weight: 4,
      ),

      // Pause
      TweenSequenceItem(
        tween: Tween<double>(begin: 0, end: 0),
        weight: 20,
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
        tween: Tween(begin: .2, end: -.2).chain(
          CurveTween(curve: Curves.easeInOut)
        ),
        weight: 4,
      ),
      TweenSequenceItem(
        tween: Tween(begin: -.2, end: .0).chain(
          CurveTween(curve: Curves.easeInOut)
        ),
        weight: 4,
      ),

      // Pause
      TweenSequenceItem(
        tween: Tween<double>(begin: 0, end: 0),
        weight: 20,
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
