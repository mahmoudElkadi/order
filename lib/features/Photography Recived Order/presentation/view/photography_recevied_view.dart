import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order/features/Photography%20Recived%20Order/presentation/view/widgets/photography_recevied_body.dart';

import 'manger/photography_received_cubit.dart';

class PhotographyReceivedOrder extends StatelessWidget {
  const PhotographyReceivedOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PhotographyReceivedCubit(),
        child: const PhotographyReceivedOrderBody());
  }
}
