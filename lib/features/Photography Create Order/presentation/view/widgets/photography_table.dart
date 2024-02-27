import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order/core/widgets/width_spacer.dart';

import '../../../../../core/utils/app_style.dart';

class PhotographyTable extends StatelessWidget {
  const PhotographyTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.w)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: MediaQuery.of(context).size.width < 600
                ? Axis.horizontal
                : Axis.vertical,
            child: SingleChildScrollView(
              child: SizedBox(
                width: MediaQuery.of(context).size.width > 600
                    ? MediaQuery.of(context).size.width
                    : MediaQuery.of(context).size.width * 1.65,
                child: DataTable(
                    dataRowMaxHeight: 80,
                    dataRowMinHeight: 70,
                    columnSpacing: 10.0,
                    showCheckboxColumn: true,
                    //horizontalMargin: 50,
                    headingRowColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green.shade900),
                    columns: <DataColumn>[
                      DataColumn(
                          label: Expanded(
                        child: Text(
                          "IMAGE",
                          textAlign: TextAlign.center,
                          // overflow: TextOverflow.ellipsis,
                          style: appStyle(
                              context, 14, Colors.white, FontWeight.w500),
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
                        child: Text(
                          "NAME",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: appStyle(
                              context, 14, Colors.white, FontWeight.w500),
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
                        child: Text(
                          "Location",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: appStyle(
                              context, 14, Colors.white, FontWeight.w500),
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
                        child: Text(
                          "Action",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: appStyle(
                              context, 14, Colors.white, FontWeight.w500),
                        ),
                      )),
                    ],
                    rows: List.generate(
                      1,
                      (index) => DataRow(
                        cells: <DataCell>[
                          DataCell(Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/tnen.png"),
                                        fit: BoxFit.cover)),
                              ))),
                          DataCell(Align(
                              alignment: Alignment.center,
                              child: Text("Virtual Product (xxxx)"))),
                          DataCell(
                            Align(
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  Icon(Icons.location_on),
                                  WidthSpacer(10),
                                  Text(
                                    "xxxx",
                                    textAlign: TextAlign.center,
                                    style: appStyle(context, 14, Colors.black,
                                        FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          DataCell(
                            Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                children: [
                                  Icon(Icons.edit_calendar),
                                  WidthSpacer(5),
                                  Icon(Icons.delete_forever),
                                  WidthSpacer(5),
                                  Icon(Icons.menu),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )

                    // paymentMethod().map(
                    //       (payment)=>DataRow(
                    //           cells: <DataCell>[
                    //   DataCell(Text(payment.payment)),
                    //   DataCell(Text(payment.Photographys)),
                    //   DataCell(Text(payment.amount))
                    // ]),
                    // ).toList()

                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
