import 'package:mobx/mobx.dart';
import 'package:shortly_flutter/app/screens/onboard/model/onboard_screen_model.dart';
part 'onboard_viewmodel.g.dart';

class OnboardViewModel = _OnboardViewModelBase with _$OnboardViewModel;

abstract class _OnboardViewModelBase with Store {
  @observable
  List<OnboardScreenModel> onboardPageBuilderList = [
    OnboardScreenModel(title: "", description: "", image: ""),
    OnboardScreenModel(title: "", description: "", image: ""),
    OnboardScreenModel(title: "", description: "", image: ""),
  ];
}
