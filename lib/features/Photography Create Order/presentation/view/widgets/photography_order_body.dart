import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order/core/utils/app_style.dart';
import 'package:order/core/widgets/heigher-spacer.dart';
import 'package:order/features/Photography%20Create%20Order/presentation/view/widgets/photography_item.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_form_field.dart';
import '../../../../../core/widgets/width_spacer.dart';
import '../manger/photography_cubit.dart';
import '../manger/photography_state.dart';

class PhotographyOrderBody extends StatelessWidget {
  const PhotographyOrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotographyCubit, PhotographyState>(
      builder: (context, state) => Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: CustomTextField2(
                          onTap: () {
                            PhotographyCubit.get(context).changeTap();
                          },
                          controller:
                              PhotographyCubit.get(context).skuController,
                          keyboardType: TextInputType.text,
                          color: PhotographyCubit.get(context).tapped == false
                              ? Colors.grey.shade300
                              : Colors.white,
                          hintText: "Type SKU here ...",
                          isDense: true,
                          height: 7,
                        ),
                      ),
                      const WidthSpacer(10),
                      Expanded(
                        flex: 1,
                        child: CustomButton(
                          onTap: () {
                            PhotographyCubit.get(context).viewText =
                                !PhotographyCubit.get(context).viewText;
                          },
                          radis: 10,
                          height: 8,
                          text: "Add Item",
                          backGroundColor: Colors.green.shade700,
                        ),
                      )
                    ],
                  ),
                  const HeightSpacer(20),
                  if (PhotographyCubit.get(context).viewText == true)
                    Column(
                      children: [
                        Text(
                          "Order  #XXXX",
                          style: appStyle(
                              context, 22, Colors.black, FontWeight.w700),
                        ),
                        const HeightSpacer(20),
                        ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return const PhotographyItem();
                            },
                            separatorBuilder: (context, index) {
                              return const HeightSpacer(20);
                            },
                            itemCount: 10),
                        HeightSpacer(120)
                      ],
                    )
                ],
              ),
            ),
          ),
          if (PhotographyCubit.get(context).viewText == true)
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(10.h),
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 10.h),
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
                          "Create Order",
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
