import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order/features/Orders/manger/Order%20cubit/order_cubit.dart';
import 'package:order/features/Orders/manger/Order%20cubit/order_state.dart';

class CupPicker extends StatefulWidget {
  const CupPicker({
    super.key,
    this.onSelectedItemChanged,
    required this.items,
  });
  final Function(int index)? onSelectedItemChanged;
  final List<String> items;

  @override
  State<CupPicker> createState() => _CupPickerState();
}

class _CupPickerState extends State<CupPicker> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderCubit, OrderState>(
      builder: (context, state) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: CupertinoPicker(
            looping: true,
            itemExtent: 45,
            onSelectedItemChanged: widget.onSelectedItemChanged,
            children:
                widget.items.map((item) => Center(child: Text(item))).toList()),
      ),
    );
  }
}
