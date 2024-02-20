import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sidebarx/sidebarx.dart';

class ExampleSidebarX extends StatefulWidget {
  const ExampleSidebarX({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  State<ExampleSidebarX> createState() => _ExampleSidebarXState();
}

class _ExampleSidebarXState extends State<ExampleSidebarX> {
  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: widget._controller,
      theme: SidebarXTheme(
        margin: EdgeInsets.all(10.h).copyWith(top: 57.h),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.h),
                bottomRight: Radius.circular(20.h))),
        hoverColor: Colors.black,
        textStyle: TextStyle(color: Colors.black.withOpacity(0.7)),
        selectedTextStyle: const TextStyle(color: Colors.green),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        iconTheme: IconThemeData(
          color: Colors.black.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.green,
          size: 20,
        ),
      ),
      extendedTheme: SidebarXTheme(
        margin: EdgeInsets.only(top: 40.h),
        width: MediaQuery.sizeOf(context).width > 1000
            ? MediaQuery.sizeOf(context).width * 0.25
            : MediaQuery.sizeOf(context).width * 0.5,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.h),
                bottomRight: Radius.circular(20.h))),
      ),
      footerDivider: Divider(color: Colors.black.withOpacity(0.3), height: 1),
      headerBuilder: (context, extended) {
        return SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(16.0).copyWith(top: 20.h, bottom: 0),
            child: SvgPicture.asset(
              'assets/images/octa-splash.svg',
              width: 50.w,
              height: 50.h,
            ),
          ),
        );
      },
      items: [
        SidebarXItem(
            icon: Icons.local_shipping,
            label: 'Order',
            onTap: () {
              Navigator.of(context).pop();
            }),
        SidebarXItem(
            icon: Icons.food_bank,
            label: 'Warehouse Picklist',
            onTap: () {
              Navigator.of(context).pop();
            }),
        SidebarXItem(
            icon: Icons.currency_bitcoin,
            label: 'Spending',
            onTap: () {
              Navigator.of(context).pop();
            }),
        SidebarXItem(
            icon: Icons.gps_fixed,
            label: 'Affiliate',
            onTap: () {
              Navigator.of(context).pop();
            }),
        SidebarXItem(
            icon: Icons.gavel,
            label: 'Withdrawal',
            onTap: () {
              Navigator.of(context).pop();
            }),
        SidebarXItem(
            icon: Icons.payment,
            label: 'Po Payment',
            onTap: () {
              Navigator.of(context).pop();
            }),
        SidebarXItem(
            icon: Icons.cases_sharp,
            label: 'Temporary Cash',
            onTap: () {
              Navigator.of(context).pop();
            }),
        SidebarXItem(
            icon: Icons.person,
            label: 'Employee',
            onTap: () {
              Navigator.of(context).pop();
            }),
      ],
    );
  }
}
