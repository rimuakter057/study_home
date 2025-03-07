import 'package:flutter/material.dart';
import 'package:study_home/common/widgets/containers/circular_container.dart';
import 'package:study_home/common/widgets/curved/curved_edges_widget.dart';
import 'package:study_home/presentation/utils/constants/color.dart';


class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    super.key, required this.child,
  });
final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child:  Container(
        color: AppColors.primaryColor,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                  backgroundColor: AppColors.crContainer,
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CircularContainer(
                  backgroundColor: AppColors.crContainer,
                ),
              ),
              child,
            ],

          ),

        ),

      ),

    );
  }
}