import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order/features/Photography%20Return%20Order/presentation/view/widgets/photography_return_body.dart';

import 'manger/photography_return_cubit.dart';

class PhotographyReturnOrder extends StatelessWidget {
  const PhotographyReturnOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PhotographyReturnCubit(),
        child: const PhotographyReturnOrderBody());
  }
}
