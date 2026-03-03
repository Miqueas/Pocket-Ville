import 'package:flutter/material.dart';
import 'package:pocket_ville/core/presentation/widgets/loading_dot.dart';

final class Loading extends StatefulWidget {
  const Loading({
    super.key,
    this.color,
  });

  final Color? color;

  @override
  State<Loading> createState() => _LoadingState();
}

final class _LoadingState
extends State<Loading>
with TickerProviderStateMixin
{
  static const _defaultColor = Color(0xFF1F49B6);

  late final Animation<double> _firstDotPosition, _firstDotOpacity;
  late final Animation<double> _secondDotPosition, _secondDotOpacity;
  late final Animation<double> _thirdDotPosition, _thirdDotOpacity;

  late final _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 1,),
  );

  @override
  void initState() {
    super.initState();
    _setupFirstDotAnimations();
    _setupSecondDotAnimations();
    _setupThirdDotAnimations();
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _setupFirstDotAnimations() {
    _firstDotPosition = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 0, end: -8,)
          .chain(CurveTween(curve: Curves.easeInOut)),
        weight: 15,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: -8, end: 0,)
          .chain(CurveTween(curve: Curves.easeInOut)),
        weight: 15,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 0, end: 0,),
        weight: 70,
      ),
    ]).animate(_controller);

    _firstDotOpacity = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: .4, end: 1,)
          .chain(CurveTween(curve: Curves.easeInOut)),
        weight: 15,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 1, end: .4,)
          .chain(CurveTween(curve: Curves.easeInOut)),
        weight: 15,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: .4, end: .4,),
        weight: 70,
      ),
    ]).animate(_controller);
  }

  void _setupSecondDotAnimations() {
    _secondDotPosition = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 0, end: 0,),
        weight: 10,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 0, end: -8,)
          .chain(CurveTween(curve: Curves.easeInOut)),
        weight: 15,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: -8, end: 0,)
          .chain(CurveTween(curve: Curves.easeInOut)),
        weight: 15,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 0, end: 0,),
        weight: 60,
      ),
    ]).animate(_controller);

    _secondDotOpacity = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: .4, end: .4,),
        weight: 10,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: .4, end: 1,)
          .chain(CurveTween(curve: Curves.easeInOut)),
        weight: 15,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 1, end: .4,)
          .chain(CurveTween(curve: Curves.easeInOut)),
        weight: 15,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: .4, end: .4,),
        weight: 60,
      ),
    ]).animate(_controller);
  }

  void _setupThirdDotAnimations() {
    _thirdDotPosition = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 0, end: 0,),
        weight: 20,
        //         
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 0, end: -8,)
          .chain(CurveTween(curve: Curves.easeInOut)),
        weight: 15,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: -8, end: 0,)
          .chain(CurveTween(curve: Curves.easeInOut)),
        weight: 15,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 0, end: 0,),
        weight: 50,
      ),
    ]).animate(_controller);

    _thirdDotOpacity = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: .4, end: .4,),
        weight: 20,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: .4, end: 1,)
          .chain(CurveTween(curve: Curves.easeInOut)),
        weight: 15,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 1, end: .4,)
          .chain(CurveTween(curve: Curves.easeInOut)),
        weight: 15,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: .4, end: .4,),
        weight: 50,
      ),
    ]).animate(_controller);
  }

  @override
  Widget build(BuildContext context) => SizedBox(
    width: 32,
    height: 16,
    child: AnimatedBuilder(
      animation: Listenable.merge([
        _firstDotPosition, _firstDotOpacity,
        _secondDotPosition, _secondDotOpacity,
        _thirdDotPosition, _thirdDotOpacity,
      ]),
      builder: (_, _) => Row(
        spacing: 4,
        mainAxisSize: .min,
        mainAxisAlignment: .spaceAround,
        crossAxisAlignment: .end,
        children: [
          Transform.translate(
            offset: Offset(0, _firstDotPosition.value),
            child: Opacity(
              opacity: _firstDotOpacity.value,
              child: LoadingDot(color: widget.color ?? _defaultColor,)
            ),
          ),
          Transform.translate(
            offset: Offset(0, _secondDotPosition.value),
            child: Opacity(
              opacity: _secondDotOpacity.value,
              child: LoadingDot(color: widget.color ?? _defaultColor,),
            ),
          ),
          Transform.translate(
            offset: Offset(0, _thirdDotPosition.value),
            child: Opacity(
              opacity: _thirdDotOpacity.value,
              child: LoadingDot(color: widget.color ?? _defaultColor,),
            ),
          ),
        ],
      ),
    ),
  );
}