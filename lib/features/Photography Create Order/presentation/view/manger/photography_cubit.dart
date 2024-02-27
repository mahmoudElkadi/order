import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order/features/Photography%20Create%20Order/presentation/view/manger/photography_state.dart';

class PhotographyCubit extends Cubit<PhotographyState> {
  PhotographyCubit() : super(PhotographyInitial());

  static PhotographyCubit get(context) => BlocProvider.of(context);

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
