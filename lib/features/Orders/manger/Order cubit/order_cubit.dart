import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit() : super(OrderInitial());

  static OrderCubit get(context) => BlocProvider.of(context);

  TextEditingController idController = TextEditingController();

  int currentStep = 0;

  dynamic item;
  String? quantity;
  int price = 0;
  int qty = 0;

  incrementItem(String type) {
    if (type == "price") {
      price++;
      emit(IncrementSuccess());
    } else if (type == "qty") {
      qty++;
      emit(IncrementSuccess());
    }
  }

  bool tapped = false;

  changeTap() {
    tapped = !tapped;
    emit(DecrementSuccess());
  }

  decrementItem() {
    qty--;
    emit(DecrementSuccess());
  }

  incrementStep() {
    currentStep += 1;
    emit(CurrentSuccess());
  }

  decrementStep() {
    currentStep -= 1;
    emit(CurrentSuccess());
  }

  bool _viewText = true;

  bool get viewText => _viewText;

  set viewText(bool newState) {
    _viewText = newState;
    emit(ViewChange());
  }

  bool isLoading = false;

  void loading() {
    isLoading = true;
    emit(LoadingSuccess());
  }
}
