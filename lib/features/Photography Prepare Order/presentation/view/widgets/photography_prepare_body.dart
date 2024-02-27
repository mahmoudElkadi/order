import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order/core/utils/app_style.dart';
import 'package:order/core/widgets/heigher-spacer.dart';

import '../../../../Photography Create Order/presentation/view/widgets/photography_item.dart';
import '../manger/photography_prepare_cubit.dart';
import '../manger/photography_prepare_state.dart';

class PhotographyPrepareOrderBody extends StatelessWidget {
  const PhotographyPrepareOrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotographyPrepareCubit, PhotographyPrepareState>(
      builder: (context, state) => Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15.h),
              child: Column(
                children: [
                  Column(
                    children: [
                      Text(
                        "Order  #XXXX",
                        style: appStyle(
                            context, 22, Colors.black, FontWeight.w700),
                      ),
                      const HeightSpacer(20),
                      ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return const PhotographyItem();
                          },
                          separatorBuilder: (context, index) {
                            return const HeightSpacer(20);
                          },
                          itemCount: 10),
                      const HeightSpacer(100)
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(10.h),
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                    decoration: BoxDecoration(
                        color: Colors.green.shade600,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Center(
                      child: Text(
                        "Prepare Order",
                        style: appStyle(
                            context, 18, Colors.white, FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
