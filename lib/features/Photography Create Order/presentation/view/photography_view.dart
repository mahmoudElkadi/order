import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order/features/Photography%20Create%20Order/presentation/view/manger/photography_cubit.dart';
import 'package:order/features/Photography%20Create%20Order/presentation/view/widgets/photography_order_body.dart';

class PhotographyOrder extends StatelessWidget {
  const PhotographyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PhotographyCubit(), child: PhotographyOrderBody());
  }
}
