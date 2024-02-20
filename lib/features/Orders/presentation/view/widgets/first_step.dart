import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order/core/utils/app_style.dart';
import 'package:order/core/widgets/custom_form_field.dart';
import 'package:order/core/widgets/heigher-spacer.dart';
import 'package:order/features/Orders/manger/Order%20cubit/order_cubit.dart';

import '../../../manger/Order cubit/order_state.dart';
import 'cupertino_picker.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<String> items = [
    "item 1",
    "item 2",
    "item 3",
    "item 4",
    "item 5",
    "item 6",
    "item 7",
    "item 8",
    "item 9"
  ];
  int index = 0;
  String? ali;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderCubit, OrderState>(
      builder: (context, state) => Container(
        padding: EdgeInsets.all(15.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                showCupertinoModalPopup(
                    context: context,
                    builder: (context) => BlocProvider(
                          create: (context) => OrderCubit(),
                          child: CupertinoActionSheet(
                            actions: [
                              CupPicker(
                                onSelectedItemChanged: (index) {
                                  setState(() {
                                    this.index = index;
                                    ali = items[index];
                                  });
                                },
                                items: items,
                              )
                            ],
                          ),
                        ));
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.h),
                    border: Border.all(color: Colors.black, width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ali ?? "Select Partner",
                      style:
                          appStyle(context, 16, Colors.black, FontWeight.w600),
                    ),
                    const Icon(
                      Icons.arrow_drop_down_sharp,
                      size: 30,
                    )
                  ],
                ),
              ),
            ),
            const HeightSpacer(20),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.h),
                  border: Border.all(color: Colors.black, width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Select Warehouse",
                    style: appStyle(context, 16, Colors.black, FontWeight.w600),
                  ),
                  const Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 30,
                  )
                ],
              ),
            ),
            const HeightSpacer(20),
            CustomTextField2(
              border: true,
              isDense: true,
              height: 15,
              controller: OrderCubit.get(context).idController,
              keyboardType: TextInputType.text,
              color: Colors.white,
              hintText: "Type Partner Order Id",
            ),

            // HeightSpacer(MediaQuery.sizeOf(context).height < 700
            //     ? MediaQuery.sizeOf(context).height * .35
            //     : MediaQuery.sizeOf(context).height * 0.5),
          ],
        ),
      ),
    );
  }
}
