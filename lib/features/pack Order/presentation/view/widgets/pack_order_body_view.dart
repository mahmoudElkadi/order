import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/heigher-spacer.dart';
import 'custom_pack_order.dart';

class PackOrderBody extends StatelessWidget {
  const PackOrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(15.h),
        child: Column(
          children: [
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                separatorBuilder: (context, index) {
                  return const HeightSpacer(25);
                },
                itemBuilder: (context, index) {
                  return CustomItemOrder(
                    color: index == 1
                        ? Colors.orangeAccent
                        : Colors.green.shade700,
                  );
                }),
          ],
        ),
      ),
    );
  }
}
