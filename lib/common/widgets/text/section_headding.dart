import 'package:flutter/material.dart';


class AppSectionHeading extends StatelessWidget {
  const AppSectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = true,
    this.buttonTitle = 'view all',
    required this.title,
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),),
        if(showActionButton)  TextButton(onPressed:onPressed, child: Text(buttonTitle)),
      ],
    );
  }
}