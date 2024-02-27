import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order/features/Photography%20Prepare%20Order/presentation/view/widgets/photography_prepare_body.dart';

import 'manger/photography_prepare_cubit.dart';

class PhotographyPrepareOrder extends StatelessWidget {
  const PhotographyPrepareOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PhotographyPrepareCubit(),
        child: const PhotographyPrepareOrderBody());
  }
}
