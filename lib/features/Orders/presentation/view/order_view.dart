import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order/features/Orders/manger/Order%20cubit/order_cubit.dart';
import 'package:order/features/Orders/presentation/view/widgets/order_view_body.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderCubit(),
      child: Container(
        color: Colors.white,
        height: MediaQuery.sizeOf(context).height,
        child: const OrderViewBody(),
      ),
    );
  }
}
