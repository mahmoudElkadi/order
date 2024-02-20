import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order/core/utils/app_style.dart';

import '../../../../../core/widgets/heigher-spacer.dart';
import '../../../../../core/widgets/reusable_text.dart';
import '../../../../../core/widgets/width_spacer.dart';

class WarehousePicklistViewBody extends StatelessWidget {
  const WarehousePicklistViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(15.h),
        child: Column(
          children: [
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.w)),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 15),
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.green.shade500,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Customer: ",
                                style: appStyle(
                                    context, 18, Colors.white, FontWeight.w600),
                              ),
                              Text(
                                "محمد ياسر ابراهيم القاضي",
                                style: appStyle(
                                    context, 18, Colors.white, FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 10.h),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxHeight:
                                      MediaQuery.sizeOf(context).height * 0.25),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey.shade300,
                              ),
                              child: Padding(
                                  padding:
                                      EdgeInsets.all(10.h).copyWith(top: 15),
                                  child: ListView.separated(
                                    itemBuilder: (context, index) {
                                      return Row(
                                        children: [
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.15,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.075,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                image: const DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/card.png"),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                          const WidthSpacer(10),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.6,
                                                child: ReusableText(
                                                    text:
                                                        "Clementoni - Paw Patrol Happy Color Double Color Double Color Double ",
                                                    style: appStyle(
                                                        context,
                                                        14,
                                                        Colors.black,
                                                        FontWeight.w600)),
                                              ),
                                              const HeightSpacer(10),
                                              ReusableText(
                                                  text: "Abys2-BS:1",
                                                  style: appStyle(
                                                      context,
                                                      18,
                                                      Colors.black,
                                                      FontWeight.w500)),
                                            ],
                                          )
                                        ],
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return const HeightSpacer(20);
                                    },
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 3,
                                    shrinkWrap: true,
                                  )),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 7.w, horizontal: 8.w),
                          decoration: BoxDecoration(
                              color: Colors.green.shade500,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: Text(
                            "PICKED",
                            style: appStyle(
                                context, 16, Colors.white, FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const HeightSpacer(40);
                },
                itemCount: 6)
          ],
        ),
      ),
    );
  }
}
