import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:order/features/Main/presentation/views/widgets/sideBar.dart';
import 'package:order/features/Orders/presentation/view/order_view.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../../../core/utils/app_style.dart';
import '../../../Warehouse Pocklist/presentation/view/warehouse_picklist.dart';

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
                                    child: Text("SPENDING",
                                        textAlign: TextAlign.center,
                                        style: appStyle(context, 22,
                                            Colors.white, FontWeight.bold)),
                                  ),
                                )
                              : _controller.selectedIndex == 3
                                  ? Padding(
                                      padding: EdgeInsets.only(right: 30.w),
                                      child: Center(
                                        child: Text(
                                          "AFFILIATE WALLET",
                                          style: appStyle(context, 22,
                                              Colors.white, FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  : _controller.selectedIndex == 4
                                      ? Padding(
                                          padding: EdgeInsets.only(right: 30.w),
                                          child: Center(
                                            child: Text(
                                              "EMPLOYEE WITHDRAWAL",
                                              style: appStyle(
                                                  context,
                                                  22,
                                                  Colors.white,
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
                                                  "PURCHASE ORDERS' SUPPLIERS",
                                                  style: appStyle(
                                                      context,
                                                      20,
                                                      Colors.white,
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
                                                      "Temporary Cash",
                                                      style: appStyle(
                                                          context,
                                                          22,
                                                          Colors.white,
                                                          FontWeight.bold),
                                                    ),
                                                  ),
                                                )
                                              : Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 30.w),
                                                  child: Center(
                                                    child: Text(
                                                      "Employee",
                                                      style: appStyle(
                                                          context,
                                                          22,
                                                          Colors.white,
                                                          FontWeight.bold),
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
