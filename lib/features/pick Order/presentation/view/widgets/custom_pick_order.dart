import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order/core/widgets/custom_button.dart';
import 'package:order/core/widgets/width_spacer.dart';

import '../../../../../core/utils/app_style.dart';
import '../../../../../core/widgets/heigher-spacer.dart';

class CustomItemOrder extends StatelessWidget {
  const CustomItemOrder({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.h),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10.h),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15.w),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Order #",
                      style:
                          appStyle(context, 20, Colors.black, FontWeight.bold),
                    ),
                    Text(
                      "282045",
                      style:
                          appStyle(context, 20, Colors.black, FontWeight.bold),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 30.h),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.h)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HeightSpacer(25.h),
                            Row(
                              children: [
                                const WidthSpacer(10),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 0.w),
                                    child: Image.asset(
                                      "assets/images/tnen.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 10.h, left: 15.w),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Customer",
                                              style: appStyle(context, 18,
                                                  Colors.grey, FontWeight.w600),
                                            ),
                                            Text(
                                              "Amazon Market",
                                              style: appStyle(
                                                  context,
                                                  20,
                                                  Colors.black,
                                                  FontWeight.bold),
                                            ),
                                            Text(
                                              "(Amazon - 48932)",
                                              style: appStyle(
                                                  context,
                                                  16,
                                                  Colors.grey.shade600,
                                                  FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                        const HeightSpacer(20),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Name",
                                              style: appStyle(context, 18,
                                                  Colors.grey, FontWeight.w600),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.45,
                                              child: Text(
                                                "DINOSAUR SOFT TOY ",
                                                maxLines: 2,
                                                style: appStyle(
                                                    context,
                                                    18,
                                                    Colors.black,
                                                    FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const HeightSpacer(30),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "QUANTITY",
                                        style: appStyle(
                                            context,
                                            18,
                                            Colors.grey.shade600,
                                            FontWeight.w700),
                                      ),
                                      const HeightSpacer(7),
                                      Text(
                                        "1 ITEM",
                                        style: appStyle(context, 18,
                                            Colors.black, FontWeight.w700),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "LOCATION",
                                        style: appStyle(
                                            context,
                                            18,
                                            Colors.grey.shade600,
                                            FontWeight.w700),
                                      ),
                                      const HeightSpacer(7),
                                      Text(
                                        "CAI-11",
                                        style: appStyle(context, 18,
                                            Colors.black, FontWeight.w700),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: CustomButton(
                                  text: "Submit",
                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                  textSize: 20,
                                  radis: 10,
                                  backGroundColor: color,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: MediaQuery.sizeOf(context).width * 0.35,
                      child: Container(
                        padding: EdgeInsets.all(10.w),
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/amzn.png",
                            fit: BoxFit.cover,
                            width: 50.h,
                            height: 50.h,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
