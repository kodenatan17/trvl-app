import 'package:Trvl/core/foundation/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TRShimmer extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;

  TRShimmer.rect({
    super.key,
    this.width = double.infinity,
    required this.height,
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(8))})
      : shapeBorder = RoundedRectangleBorder(borderRadius : borderRadius);

  const TRShimmer.circle({
    super.key,
    this.width = double.infinity,
    required this.height,
    this.shapeBorder = const CircleBorder()
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: AppColors.bgNeutralGrey60,
        highlightColor: AppColors.bgNeutralGrey20,
        period: const Duration(milliseconds: 1500),
        child: Container(
          width: width,
          height: height,
          decoration: ShapeDecoration(color: Colors.grey[400], shape: shapeBorder),
        ),
    );
  }
}
