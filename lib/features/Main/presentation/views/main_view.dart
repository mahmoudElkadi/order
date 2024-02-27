import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:order/features/Main/presentation/views/widgets/sideBar.dart';
import 'package:order/features/Orders/presentation/view/order_view.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../../../core/utils/app_style.dart';
import '../../../Photography Create Order/presentation/view/photography_view.dart';
import '../../../Photography Done Order/presentation/view/photography_done_view.dart';
import '../../../Photography Prepare Order/presentation/view/photography_prepare_view.dart';
import '../../../Photography Recived Order/presentation/view/photography_recevied_view.dart';
import '../../../Photography Return Order/presentation/view/photography_return_view.dart';
import '../../../Warehouse Pocklist/presentation/view/warehouse_picklist.dart';
import '../../../pack Order/presentation/view/pack_order.dart';
import '../../../pick Order/presentation/view/pick_order.dart';
import '../../../qr code/presentation/view/qr_handover.dart';

class MainView extends StatefulWidget {
  const MainView({super.key, this.pageIndex});
  final int? pageIndex;

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late var _controller;
  final _key = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _key.currentState?.closeDrawer();
    _controller = SidebarXController(
        selectedIndex: this.widget.pageIndex ?? 0, extended: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final isSmallScreen = MediaQuery.of(context).size.width < 1200;
        return Scaffold(
          backgroundColor: Colors.grey.shade100,
          key: _key,
          appBar: isSmallScreen
              ? AppBar(
                  backgroundColor: Colors.white,
                  leading: IconButton(
                    onPressed: () {
                      if (_key.currentState!.isEndDrawerOpen) {
                        _key.currentState?.openDrawer();
                      }
                      _key.currentState?.openDrawer();
                    },
                    icon: SvgPicture.asset(
                      "assets/images/menu.svg",
                    ),
                  ),
                  title: _controller.selectedIndex == 0
                      ? Padding(
                          padding: EdgeInsets.only(right: 30.w),
                          child: Center(
                            child: Text("Create New Order",
                                textAlign: TextAlign.center,
                                style: appStyle(context, 22, Colors.black,
                                    FontWeight.bold)),
                          ),
                        )
                      : _controller.selectedIndex == 1
                          ? Padding(
                              padding: EdgeInsets.only(right: 30.w),
                              child: Center(
                                child: Text(
                                  "Warehouse Picklist",
                                  style: appStyle(context, 22, Colors.black,
                                      FontWeight.bold),
                                ),
                              ),
                            )
                          : _controller.selectedIndex == 2
                              ? Padding(
                                  padding: EdgeInsets.only(right: 30.w),
                                  child: Center(
                                    child: Text("Pick New Order",
                                        textAlign: TextAlign.center,
                                        style: appStyle(context, 22,
                                            Colors.black, FontWeight.bold)),
                                  ),
                                )
                              : _controller.selectedIndex == 3
                                  ? Padding(
                                      padding: EdgeInsets.only(right: 30.w),
                                      child: Center(
                                        child: Text(
                                          "Pack New Order",
                                          style: appStyle(context, 22,
                                              Colors.black, FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  : _controller.selectedIndex == 4
                                      ? Padding(
                                          padding: EdgeInsets.only(right: 30.w),
                                          child: Center(
                                            child: Text(
                                              "Handover",
                                              style: appStyle(
                                                  context,
                                                  22,
                                                  Colors.black,
                                                  FontWeight.bold),
                                            ),
                                          ),
                                        )
                                      : _controller.selectedIndex == 5
                                          ? Padding(
                                              padding:
                                                  EdgeInsets.only(right: 30.w),
                                              child: Center(
                                                child: Text(
                                                  "Photography Order",
                                                  style: appStyle(
                                                      context,
                                                      20,
                                                      Colors.black,
                                                      FontWeight.bold),
                                                ),
                                              ),
                                            )
                                          : _controller.selectedIndex == 6
                                              ? Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 30.w),
                                                  child: Center(
                                                    child: Text(
                                                      "Prepare Order",
                                                      style: appStyle(
                                                          context,
                                                          20,
                                                          Colors.black,
                                                          FontWeight.bold),
                                                    ),
                                                  ),
                                                )
                                              : _controller.selectedIndex == 7
                                                  ? Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 30.w),
                                                      child: Center(
                                                        child: Text(
                                                          "Received For Photography",
                                                          style: appStyle(
                                                              context,
                                                              20,
                                                              Colors.white,
                                                              FontWeight.bold),
                                                        ),
                                                      ),
                                                    )
                                                  : _controller.selectedIndex ==
                                                          8
                                                      ? Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 30.w),
                                                          child: Center(
                                                            child: Text(
                                                              "Return Photography",
                                                              style: appStyle(
                                                                  context,
                                                                  20,
                                                                  Colors.black,
                                                                  FontWeight
                                                                      .bold),
                                                            ),
                                                          ),
                                                        )
                                                      : _controller
                                                                  .selectedIndex ==
                                                              9
                                                          ? Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          30.w),
                                                              child: Center(
                                                                child: Text(
                                                                  "Done",
                                                                  style: appStyle(
                                                                      context,
                                                                      20,
                                                                      Colors
                                                                          .black,
                                                                      FontWeight
                                                                          .bold),
                                                                ),
                                                              ),
                                                            )
                                                          : Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          30.w),
                                                              child: Center(
                                                                child: Text(
                                                                  "PURCHASE ORDERS' SUPPLIERS",
                                                                  style: appStyle(
                                                                      context,
                                                                      20,
                                                                      Colors
                                                                          .white,
                                                                      FontWeight
                                                                          .bold),
                                                                ),
                                                              ),
                                                            ),
                  actions: const [],
                )
              : null,
          drawer: ExampleSidebarX(controller: _controller),
          body: Row(
            children: [
              if (!isSmallScreen) ExampleSidebarX(controller: _controller),
              Expanded(
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    switch (_controller.selectedIndex) {
                      case 0:
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          setState(() {});
                        });
                        return const OrderView();
                      case 1:
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          setState(() {});
                        });
                        return const WarehousePicklistView();
                      case 2:
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          setState(() {});
                        });
                        return const PickOrder();
                      case 3:
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          setState(() {});
                        });
                        return const PackOrder();
                      case 4:
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          setState(() {});
                        });
                        return const QRHandover();
                      case 5:
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          setState(() {});
                        });
                        return const PhotographyOrder();
                      case 6:
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          setState(() {});
                        });
                        return const PhotographyPrepareOrder();
                      case 7:
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          setState(() {});
                        });
                        return const PhotographyReceivedOrder();
                      case 8:
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          setState(() {});
                        });
                        return const PhotographyReturnOrder();
                      case 9:
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          setState(() {});
                        });
                        return const PhotographyDoneOrder();

                      default:
                        return Text(
                          "pageTitle",
                          style: appStyle(
                              context, 16, Colors.black, FontWeight.bold),
                        );
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
