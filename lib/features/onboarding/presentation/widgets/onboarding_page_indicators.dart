import 'package:flutter/material.dart';
import 'package:pocket_ville/core/extensions/gap_extension.dart';
import 'package:pocket_ville/features/onboarding/presentation/widgets/onboarding_page_indicator_item.dart';

final class OnboardingPageIndicators extends StatefulWidget {
  const OnboardingPageIndicators({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  State<OnboardingPageIndicators> createState()
    => _OnboardingPageIndicatorsState();
}

final class _OnboardingPageIndicatorsState
extends State<OnboardingPageIndicators>
{
  double get _page => switch (widget.controller.hasClients) {
    true => widget.controller.page ?? 0,
    false => 0,
  };

  @override
  Widget build(BuildContext context) => ListenableBuilder(
    listenable: widget.controller,
    builder: (context, _) {
      // By doing `(1 - _page)`, we get the "progress"/"percentage" of the 1st
      // page. For example, when `_page` is `0.5`, it means that the `PageView`
      // is halfway between the 1st and 2nd page, so the progress of the 1st page
      // is `0.5` (50%), and the progress of the 2nd page is also `0.5` (50%).
      // We can think of it as the "visibility percentage" of each page and we
      // use it to properly animate the indicators and keep them in sync with
      // the `PageView`.
      final page0 = (1 - _page).clamp(0.0, 1.0);
      final page1 = _page.clamp(0.0, 1.0);

      return Row(
        mainAxisAlignment: .center,
        children: [
          OnboardingPageIndicatorItem(progress: page0,),
          8.w,
          OnboardingPageIndicatorItem(progress: page1,),
        ],
      );
    },
  );
}

