import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order/core/utils/app_style.dart';
import 'package:order/core/widgets/heigher-spacer.dart';

import '../../../../../core/widgets/width_spacer.dart';

class PhotographyItem extends StatelessWidget {
  const PhotographyItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 5.h),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
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
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset(
                              "assets/images/tnen.png",
                              height: MediaQuery.sizeOf(context).height > 450
                                  ? MediaQuery.sizeOf(context).height * 0.1
                                  : MediaQuery.sizeOf(context).height * 0.35,
                              fit: BoxFit.fill,
                            ))),
                    const WidthSpacer(20),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Virtaul Product (xxxxx)",
                            style: appStyle(
                                context, 18, Colors.black, FontWeight.w600),
                          ),
                          const HeightSpacer(10),
                          Align(
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                const Icon(Icons.location_on),
                                const WidthSpacer(10),
                                Text(
                                  "xxxx",
                                  textAlign: TextAlign.center,
                                  style: appStyle(context, 18, Colors.black,
                                      FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
