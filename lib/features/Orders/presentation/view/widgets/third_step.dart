import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order/core/utils/app_style.dart';
import 'package:order/core/widgets/heigher-spacer.dart';
import 'package:order/core/widgets/reusable_text.dart';
import 'package:order/core/widgets/width_spacer.dart';

class ThredStep extends StatelessWidget {
  const ThredStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15.h),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        size: 25,
                        color: Colors.grey.shade700,
                      ),
                      const WidthSpacer(10),
                      ReusableText(
                          text: "Order List",
                          style: appStyle(context, 16, Colors.grey.shade700,
                              FontWeight.w500))
                    ],
                  ),
                  ReusableText(
                      text: "Remove all",
                      style: appStyle(
                          context, 17, Colors.grey.shade700, FontWeight.w500))
                ],
              ),
              const HeightSpacer(20),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(10.h),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.12,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.1,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(7),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/card.png"),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              const WidthSpacer(10),
                              Expanded(
                                flex: 6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.58,
                                      child: Text(
                                          "Clementoni - Paw Patrol Happy Color Double Color Double Color Double Color Double Color Double ",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: appStyle(context, 16,
                                              Colors.black, FontWeight.w500)),
                                    ),
                                    const HeightSpacer(10),
                                    Row(
                                      children: [
                                        ReusableText(
                                            text: "2515",
                                            style: appStyle(context, 18,
                                                Colors.black, FontWeight.bold)),
                                        const WidthSpacer(10),
                                        ReusableText(
                                            text: "EGP",
                                            style: appStyle(context, 18,
                                                Colors.black, FontWeight.bold)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    padding: const EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Colors.red.shade900,
                                    ),
                                    child: const Icon(
                                      Icons.close,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Column(
                      children: [
                        const HeightSpacer(20),
                        Container(
                          width: MediaQuery.sizeOf(context).width,
                          color: Colors.grey.shade700,
                          height: 1,
                        ),
                        const HeightSpacer(20),
                      ],
                    );
                  },
                  itemCount: 8),
              const HeightSpacer(20),
            ],
          ),
        ),
      ],
    );
  }
}
