import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order/features/Photography%20Done%20Order/presentation/view/manger/photography_done_state.dart';

class PhotographyDoneCubit extends Cubit<PhotographyDoneState> {
  PhotographyDoneCubit() : super(PhotographyDoneInitial());

  static PhotographyDoneCubit get(context) => BlocProvider.of(context);

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
