import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:order/core/utils/app_style.dart';
import 'package:order/core/widgets/heigher-spacer.dart';
import 'package:order/core/widgets/width_spacer.dart';

class CustomStepper extends StatefulWidget {
  const CustomStepper(
      {Key? key,
      this.firstPage,
      this.secondPage,
      this.thirdPage,
      this.currentIndex})
      : super(key: key);
  final Widget? firstPage;
  final Widget? secondPage;
  final Widget? thirdPage;
  final int? currentIndex;

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  late int _currentIndex;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    _currentIndex = this.widget.currentIndex ?? 0;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _currentIndex = widget.currentIndex!;
    return Container(
      color: Colors.white,
      child: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10)
                    .copyWith(top: 10),
                color: Colors.grey.shade100,
                child: Row(
                  children: [
                    StepperComponent(
                      currentIndex: _currentIndex,
                      index: 0,
                      onTap: () {
                        setState(() {
                          _currentIndex = 0;
                          _currentIndex = widget.currentIndex!;
                        });
                        if (_pageController.hasClients) {
                          _pageController.jumpToPage(0);
                        }
                      },
                    ),
                    StepperComponent(
                      currentIndex: _currentIndex,
                      index: 1,
                      onTap: () {
                        setState(() {
                          _currentIndex = 1;
                          _currentIndex = widget.currentIndex!;
                        });
                        if (_pageController.hasClients) {
                          _pageController.jumpToPage(1);
                        }
                      },
                    ),
                    StepperComponent(
                      currentIndex: _currentIndex,
                      index: 2,
                      onTap: () {
                        setState(() {
                          _currentIndex = 3;
                          _currentIndex = widget.currentIndex!;
                        });
                        if (_pageController.hasClients) {
                          _pageController.jumpToPage(2);
                        }
                      },
                    ),
                  ],
                ),
              ),
              // _currentIndex == 0
              //     ? Center(child: widget.firstPage)
              //     : _currentIndex == 1
              //         ? SingleChildScrollView(child: widget.secondPage)
              //         : Center(child: Text('Step ${_currentIndex + 1}RRR')),
              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Padding(
              //     padding: EdgeInsets.symmetric(horizontal: 10.w),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         if (_currentIndex == 1)
              //           Expanded(
              //             child: GestureDetector(
              //               onTap: () {
              //                 if (_currentIndex >= 1) {
              //                   setState(() {
              //                     _currentIndex -= 1;
              //                   });
              //                 }
              //                 if (_pageController.hasClients) {
              //                   _pageController.jumpToPage(1);
              //                 }
              //               },
              //               child: Container(
              //                 margin: EdgeInsets.symmetric(horizontal: 20.h),
              //                 padding: EdgeInsets.all(12.h),
              //                 decoration: BoxDecoration(
              //                   color: Colors.grey.shade100,
              //                   borderRadius: BorderRadius.circular(20.h),
              //                   boxShadow: [
              //                     BoxShadow(
              //                       color: Colors.grey.withOpacity(0.5),
              //                       spreadRadius: 1,
              //                       blurRadius: 3,
              //                       offset: const Offset(
              //                           0, 3), // changes position of shadow
              //                     ),
              //                   ],
              //                 ),
              //                 child: Row(
              //                   children: [
              //                     const Icon(
              //                       Icons.arrow_back_ios_new_outlined,
              //                       color: Colors.grey,
              //                       size: 20,
              //                     ),
              //                     const WidthSpacer(15),
              //                     Text(
              //                       "Perv",
              //                       style: appStyle(context, 16, Colors.grey,
              //                           FontWeight.w500),
              //                     )
              //                   ],
              //                 ),
              //               ),
              //             ),
              //           ),
              //         Expanded(
              //           child: GestureDetector(
              //             onTap: () {
              //               if (_currentIndex <= 2)
              //                 setState(() {
              //                   _currentIndex += 1;
              //                 });
              //               if (_pageController.hasClients)
              //                 _pageController.jumpToPage(1);
              //             },
              //             child: Container(
              //               margin: EdgeInsets.symmetric(horizontal: 20.h),
              //               padding: EdgeInsets.all(12.h),
              //               decoration: BoxDecoration(
              //                 gradient: LinearGradient(
              //                   begin: Alignment
              //                       .topLeft, // Choose desired starting point
              //                   end: Alignment
              //                       .bottomRight, // Choose desired ending point
              //                   colors: [
              //                     Colors.green.shade700, // First color
              //                     Colors.green.shade700
              //                         .withOpacity(0.9), // First color
              //                     Colors.green.shade700
              //                         .withOpacity(0.8), // First color
              //                     Colors.green.shade700
              //                         .withOpacity(0.6), // First color
              //                     Colors.green.shade700
              //                         .withOpacity(0.5), // First color
              //                     // Second color
              //                   ],
              //                   stops: const [
              //                     0.0,
              //                     0.3,
              //                     0.6,
              //                     0.9,
              //                     1.2
              //                   ], // Optional: specify transition points (0.0 to 1.0)
              //                 ),
              //                 borderRadius: BorderRadius.circular(20.h),
              //               ),
              //               child: Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   Text(
              //                     " ",
              //                     style: appStyle(context, 16, Colors.white,
              //                         FontWeight.w500),
              //                   ),
              //                   Text(
              //                     "Next",
              //                     style: appStyle(context, 20, Colors.white,
              //                         FontWeight.w500),
              //                   ),
              //                   const Icon(
              //                     Icons.arrow_forward_ios_outlined,
              //                     size: 20,
              //                     color: Colors.white,
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        ],
      ),
    );
  }
}

class StepperComponent extends StatelessWidget {
  // index describe the position of our bubble
  int index;
  //currentIndex is index that is gonna change on Tap
  int currentIndex;
  //onTap CallBack
  VoidCallback onTap;

  bool isLast;
  StepperComponent({
    super.key,
    required this.currentIndex,
    required this.index,
    required this.onTap,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    //now let's remove the ligne at the end of the row but also we need to remove unnecessary padding thus we need to remove the expanded
    //widget
    return isLast
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  //this is the bubble
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: index == currentIndex
                            ? HexColor("#39c77d")
                            : Colors.transparent,
                        border: Border.all(
                            color: currentIndex >= index
                                ? HexColor("#39c77d")
                                : Colors.black12),
                      ),
                      child: Center(
                        child: index <= currentIndex
                            ? Text(
                                (index + 1).toString(),
                                style: appStyle(
                                    context,
                                    16,
                                    index <= currentIndex
                                        ? Colors.white
                                        : Colors.black,
                                    FontWeight.w900),
                              )
                            : Icon(Icons.check),
                      ),
                    ),
                  ),
                  const WidthSpacer(10),
                  Text('   Step ${index + 1}'),
                ],
              ),
              const HeightSpacer(10),
              Container(
                height: 2,
                color: currentIndex >= index + 1
                    ? HexColor("#39c77d")
                    : Colors.green,
              ),
            ],
          )
        : Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    //this is the bubble
                    GestureDetector(
                      onTap: onTap,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: index <= currentIndex
                              ? Colors.green
                              : Colors.transparent,
                          border: Border.all(
                              color: currentIndex >= index
                                  ? Colors.green
                                  : Colors.black12),
                        ),
                        child: Center(
                          child: index >= currentIndex
                              ? Text(
                                  (index + 1).toString(),
                                  style: appStyle(
                                      context,
                                      16,
                                      index <= currentIndex
                                          ? Colors.white
                                          : Colors.black,
                                      FontWeight.w900),
                                )
                              : const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                        ),
                      ),
                    ),
                    const WidthSpacer(10),
                    Text('  Step ${index + 1}'),
                  ],
                ),
                const HeightSpacer(10),
                Container(
                  height: 2,
                  color:
                      currentIndex >= index + 1 ? Colors.green : Colors.black12,
                ),
              ],
            ),
          );
  }
}
