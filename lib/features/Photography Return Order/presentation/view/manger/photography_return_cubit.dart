import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order/features/Photography%20Return%20Order/presentation/view/manger/photography_return_state.dart';

class PhotographyReturnCubit extends Cubit<PhotographyReturnState> {
  PhotographyReturnCubit() : super(PhotographyReturnInitial());

  static PhotographyReturnCubit get(context) => BlocProvider.of(context);

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
