import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order/features/Photography%20Recived%20Order/presentation/view/manger/photography_received_state.dart';

class PhotographyReceivedCubit extends Cubit<PhotographyReceivedState> {
  PhotographyReceivedCubit() : super(PhotographyReceivedInitial());

  static PhotographyReceivedCubit get(context) => BlocProvider.of(context);

  TextEditingController skuController = TextEditingController();

  bool tapped = false;

  changeTap() {
    tapped = !tapped;
    emit(DecrementSuccess());
  }

  bool _viewText = false;

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
