import 'package:flutter/material.dart';

final class BaseScaffold extends StatelessWidget {
  const BaseScaffold({
    super.key,
    this.appBar,
    this.padding = const .all(16),
    this.withSafeArea = true,
    this.bottomNavigationBar,
    required this.body,
  });

  final bool withSafeArea;
  final Widget body;
  final Widget? bottomNavigationBar;
  final EdgeInsetsGeometry? padding;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final textColor = switch (brightness) {
      .dark => const Color(0xFFFAFAFA),
      .light => const Color(0xFF16161B),
    };

    final backgroundColor = switch (brightness) {
      .dark => const Color(0xFF16161B),
      .light => Colors.white,
    };

    var child = body;

    if (padding != null) {
      child = Padding(
        padding: padding!,
        child: child,
      );
    }

    if (withSafeArea) child = SafeArea(child: child);

    return DefaultTextStyle.merge(
      style: TextStyle(color: textColor,),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(overscroll: false,),
        child: Scaffold(
          body: child,
          appBar: appBar,
          backgroundColor: backgroundColor,
          bottomNavigationBar: bottomNavigationBar,
        ),
      ),
    );
  }
}