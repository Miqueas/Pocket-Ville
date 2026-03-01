import 'package:flutter/material.dart';

final class BaseScreen extends StatelessWidget {
  const BaseScreen({
    super.key,
    this.appBar,
    this.padding = const .all(16),
    this.withSafeArea = true,
    this.bottomNavigationBar,
    required this.child,
  });

  final bool withSafeArea;
  final Widget child;
  final Widget? bottomNavigationBar;
  final EdgeInsetsGeometry? padding;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final textColor = switch (brightness) {
      .dark => Color(0xFFFAFAFA),
      .light => Color(0xFF16161B),
    };

    final backgroundColor = switch (brightness) {
      .dark => Color(0xFF16161B),
      .light => Colors.white,
    };

    var body = child;

    if (padding != null) {
      body = Padding(
        padding: padding!,
        child: body,
      );
    }

    if (withSafeArea) body = SafeArea(child: body);

    return DefaultTextStyle.merge(
      style: TextStyle(color: textColor,),
      child: Scaffold(
        body: body,
        appBar: appBar,
        backgroundColor: backgroundColor,
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}