import 'package:flutter/material.dart';
import 'package:pocket_ville/core/enums/pokemon_element.dart';
import 'package:pocket_ville/core/extensions/gap.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';
import 'package:pocket_ville/features/home/presentation/widgets/home_filters_bottom_sheet_buttons.dart';
import 'package:pocket_ville/features/home/presentation/widgets/home_filters_bottom_sheet_element_item.dart';

final class HomeFiltersBottomSheet extends StatelessWidget {
  const HomeFiltersBottomSheet({ super.key, });

  @override
  Widget build(BuildContext context) => ScrollConfiguration(
    behavior: ScrollConfiguration.of(context).copyWith(overscroll: false,),
    child: DraggableScrollableSheet(
      snap: true,
      snapSizes: const [ .7, 1 ],
      minChildSize: .7,
      initialChildSize: .7,
      builder: (context, scrollController) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: .vertical(top: .circular(32),),
        ),
        child: Column(
          mainAxisSize: .min,
          children: [
            Expanded(child: ClipRRect(
              borderRadius: const .vertical(top: .circular(32),),
              child: ListView(
                padding: const .all(16),
                controller: scrollController,
                children: [
                  Align(
                    alignment: .centerLeft,
                    child: GestureDetector(
                      behavior: .opaque,
                      onTap: Navigator.of(context).pop,
                      child: const Icon(Icons.close),
                    ),
                  ),
                  14.h,
                  Text(
                    AppLocalizations.of(context)!.filterByPreference,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: .w600,
                    ),
                    textAlign: .center,
                  ),
                  32.h,
                  Row(children: [
                    Expanded(child: Text(
                      AppLocalizations.of(context)!.type,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: .w600,
                      ),
                      textAlign: .start,
                    ),),
                    8.w,
                    const Icon(Icons.keyboard_arrow_up_rounded,),
                  ],),
                  20.h,
                  const Divider(color: Color(0xFFE0E0E0),),
                  16.h,
                  Column(
                    mainAxisSize: .min,
                    crossAxisAlignment: .start,
                    children: PokemonElement.values.map(
                      (e) => HomeFiltersBottomSheetElementItem(element: e)
                    ).toList(),
                  ),
                ],
              ),
            ),),
            const HomeFiltersBottomSheetButtons(),
          ],
        ),
      ),
    ),
  );
}