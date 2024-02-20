import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:order/core/widgets/heigher-spacer.dart';
import 'package:order/core/widgets/reusable_text.dart';
import 'package:order/core/widgets/width_spacer.dart';
import 'package:order/features/Orders/manger/Order%20cubit/order_cubit.dart';
import 'package:order/features/Orders/manger/Order%20cubit/order_state.dart';
import 'package:order/features/Orders/presentation/view/widgets/done.dart';
import 'package:order/features/Orders/presentation/view/widgets/first_step.dart';
import 'package:order/features/Orders/presentation/view/widgets/second_step.dart';
import 'package:order/features/Orders/presentation/view/widgets/third_step.dart';

import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/dddd.dart';

class OrderViewBody extends StatefulWidget {
  const OrderViewBody({super.key});

  @override
  State<OrderViewBody> createState() => _OrderViewBodyState();
}

class _OrderViewBodyState extends State<OrderViewBody> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderCubit, OrderState>(
      builder: (context, state) => Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    color: Colors.white,
                    child: CustomStepper(
                      currentIndex: currentIndex,
                    )),
                Column(
                  children: [
                    currentIndex == 0
                        ? const FirstPage()
                        : currentIndex == 1
                            ? const SecondStep()
                            : currentIndex == 2
                                ? const ThredStep()
                                : const DoneView(),
                  ],
                ),
              ],
            ),
          ),
          if (currentIndex <= 2)
            Positioned(
                // top: currentIndex >= 2
                //     ? MediaQuery.sizeOf(context).height * 0.67
                //     : MediaQuery.sizeOf(context).height * 0.794,
                bottom: 0,
                child: Container(
                  padding:
                      EdgeInsets.only(bottom: 22.h, left: 15.w, right: 15.w),
                  color: Colors.white,
                  width: MediaQuery.sizeOf(context).width,
                  child: Column(
                    children: [
                      const HeightSpacer(15),
                      if (currentIndex == 2)
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(12.w),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ReusableText(
                                        text: "Total Quantity",
                                        style: appStyle(context, 18,
                                            Colors.grey, FontWeight.w600)),
                                    Row(
                                      children: [
                                        ReusableText(
                                            text: OrderCubit.get(context)
                                                    .quantity ??
                                                "0",
                                            style: appStyle(context, 18,
                                                Colors.grey, FontWeight.w600)),
                                        const WidthSpacer(5),
                                        ReusableText(
                                            text: "ITEMS",
                                            style: appStyle(context, 18,
                                                Colors.grey, FontWeight.w600)),
                                      ],
                                    )
                                  ],
                                ),
                                const HeightSpacer(10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ReusableText(
                                        text: "Total Price",
                                        style: appStyle(context, 18,
                                            Colors.grey, FontWeight.w600)),
                                    Row(
                                      children: [
                                        ReusableText(
                                            text: "1497",
                                            style: appStyle(context, 18,
                                                Colors.grey, FontWeight.w600)),
                                        const WidthSpacer(5),
                                        ReusableText(
                                            text: "EGP",
                                            style: appStyle(context, 18,
                                                Colors.grey, FontWeight.w600)),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      if (currentIndex >= 2) const HeightSpacer(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: GestureDetector(
                                onTap: () {
                                  if (currentIndex >= 1) {
                                    setState(() {
                                      currentIndex -= 1;
                                    });
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.all(
                                      MediaQuery.of(context).size.width > 900
                                          ? 15.h
                                          : 7.h),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(20.h),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                        offset: const Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.arrow_back_ios_new_outlined,
                                        color: currentIndex < 1
                                            ? Colors.grey
                                            : Colors.green,
                                        size: 20,
                                      ),
                                      Text(
                                        "Perv",
                                        style: appStyle(
                                            context,
                                            16,
                                            currentIndex < 1
                                                ? Colors.grey
                                                : Colors.green,
                                            FontWeight.w500),
                                      ),
                                      Text(
                                        " ",
                                        style: appStyle(context, 16,
                                            Colors.white, FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: GestureDetector(
                                onTap: () {
                                  if (currentIndex <= 2) {
                                    setState(() {
                                      currentIndex += 1;
                                    });
                                    if (currentIndex == 2) {
                                      OrderCubit.get(context).quantity =
                                          5.toString();
                                    }
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.all(
                                      MediaQuery.of(context).size.width > 900
                                          ? 15.h
                                          : 7.h),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment
                                          .topLeft, // Choose desired starting point
                                      end: Alignment
                                          .bottomRight, // Choose desired ending point
                                      colors: [
                                        HexColor("#1FB437"), // First color
                                        HexColor("#18AF32"), // First color
                                        HexColor("#25BC2A"),
                                        HexColor("#3AD83F"), // First color
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20.h),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        " ",
                                        style: appStyle(context, 16,
                                            Colors.white, FontWeight.w500),
                                      ),
                                      Text(
                                        currentIndex == 2 ? "CONFIRM" : "Next",
                                        style: appStyle(context, 20,
                                            Colors.white, FontWeight.w500),
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
        ],
      ),
    );
  }
}
