import 'package:flutter/material.dart';

import '../../../common/widget/custom_expansion_tile.dart';
import '../../../utils/text/app_size.dart';

class CardExpansion extends StatelessWidget {
  const CardExpansion({
    super.key,
    this.titleText,
    this.titleIcon,
    this.trailingIcon,
    this.containerText,
    this.titleIconColor,
  });
  final String? titleText;
  final Icon? titleIcon;
  final Icon? trailingIcon;
  final String? containerText;
  final Color? titleIconColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.borderRadiusSm(context)),
      ),
      child: Padding(
        padding: EdgeInsets.all(AppSize.smallPadding(context)),
        child: CustomExpansionTile(
          titleText: titleText,
          titleIcon: trailingIcon,
          containerText: containerText,
          trailingIcon: trailingIcon,
          titleIconColor: titleIconColor,
        ),
      ),
    );
  }
}
