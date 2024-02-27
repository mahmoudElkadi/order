import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order/features/Photography%20Done%20Order/presentation/view/widgets/photography_done_body.dart';

import 'manger/photography_done_cubit.dart';

class PhotographyDoneOrder extends StatelessWidget {
  const PhotographyDoneOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PhotographyDoneCubit(),
        child: const PhotographyDoneOrderBody());
  }
}
