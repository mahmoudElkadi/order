import 'package:flutter/material.dart';
import 'package:order/features/Warehouse%20Pocklist/presentation/view/widgets/warehouse_view_body.dart';

class WarehousePicklistView extends StatelessWidget {
  const WarehousePicklistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white, child: WarehousePicklistViewBody());
  }
}
