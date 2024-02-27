import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order/core/utils/app_style.dart';
import 'package:order/core/widgets/custom_button.dart';
import 'package:order/core/widgets/dropdownItem.dart';
import 'package:order/core/widgets/heigher-spacer.dart';
import 'package:order/core/widgets/reusable_text.dart';
import 'package:order/core/widgets/width_spacer.dart';
import 'package:order/features/Orders/manger/Order%20cubit/order_cubit.dart';
import 'package:order/features/Orders/manger/Order%20cubit/order_state.dart';

import '../../../../../core/widgets/custom_form_field.dart';

class SecondStep extends StatefulWidget {
  const SecondStep({super.key});

  @override
  State<SecondStep> createState() => _SecondStepState();
}

class _SecondStepState extends State<SecondStep> {
  TextEditingController priceController = TextEditingController();
  @override
  void initState() {
    priceController.text = "123555";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderCubit, OrderState>(builder: (context, state) {
      return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeightSpacer(10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: CustomTextField2(
                        onTap: () {
                          OrderCubit.get(context).changeTap();
                        },
                        controller: OrderCubit.get(context).idController,
                        keyboardType: TextInputType.text,
                        color: OrderCubit.get(context).tapped == false
                            ? Colors.grey.shade300
                            : Colors.white,
                        hintText: "Search with SKU or Name ...",
                        isDense: true,
                        height: 7,
                      ),
                    ),
                    const WidthSpacer(10),
                    Expanded(
                      flex: 1,
                      child: CustomButton(
                        radis: 10,
                        height: 8,
                        text: "Add Item",
                        backGroundColor: Colors.green.shade700,
                      ),
                    )
                  ],
                ),
              ),
              const HeightSpacer(15),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        padding: EdgeInsets.all(10.h),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.h),
                              ),
                              child: const Image(
                                image: AssetImage("assets/images/baz.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            const HeightSpacer(12),
                            Text(
                                "Clementoni - Paw Patrol Happy Color Double Color Double Color Double ",
                                style: appStyle(context, 18, Colors.black,
                                    FontWeight.w600)),
                            const HeightSpacer(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.w, vertical: 11.h),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ReusableText(
                                    text: "12345678512",
                                    style: appStyle(context, 18, Colors.white,
                                        FontWeight.w600),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.w, vertical: 8.h),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade800,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    children: [
                                      ReusableText(
                                        text: "EGP",
                                        style: appStyle(context, 18,
                                            Colors.white, FontWeight.w600),
                                      ),
                                      const WidthSpacer(5),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.17,
                                        height: 30,
                                        child: TextFormField(
                                          cursorColor: Colors.white,
                                          controller: priceController,
                                          keyboardType: TextInputType.number,
                                          style: appStyle(context, 18,
                                              Colors.white, FontWeight.w600),
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const HeightSpacer(20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.grey,
                                      size: 35,
                                    ),
                                    const WidthSpacer(7),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ReusableText(
                                            text: "Location",
                                            style: appStyle(context, 20,
                                                Colors.grey, FontWeight.w600)),
                                        Drop(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.4,
                                          items: [],
                                          hintText: "Select Location",
                                          height: 15,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ReusableText(
                                        text: "Qty",
                                        style: appStyle(context, 20,
                                            Colors.grey, FontWeight.w600)),
                                    const HeightSpacer(5),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5.h, horizontal: 10.w),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: Colors.black, width: 0.2)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              if (OrderCubit.get(context).qty >
                                                  0) {
                                                OrderCubit.get(context)
                                                    .decrementItem();
                                              }
                                            },
                                            child: const Icon(
                                              Icons.remove,
                                              color: Colors.green,
                                              size: 25,
                                            ),
                                          ),
                                          const WidthSpacer(15),
                                          Text(
                                            OrderCubit.get(context)
                                                .qty
                                                .toString(),
                                            style: appStyle(context, 16,
                                                Colors.black, FontWeight.w500),
                                          ),
                                          const WidthSpacer(15),
                                          GestureDetector(
                                            onTap: () {
                                              OrderCubit.get(context)
                                                  .incrementItem("qty");
                                            },
                                            child: const Icon(
                                              Icons.add,
                                              color: Colors.green,
                                              size: 25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const HeightSpacer(15),
                            CustomButton(
                              radis: 8,
                              text: "Delete",
                              backGroundColor: Colors.red.shade700,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const HeightSpacer(15);
                  },
                  itemCount: 5),
              const HeightSpacer(100)
            ],
          ),
        ),
      );
    });
  }
}
