import 'package:mobx/mobx.dart';

import '../model/onboard_screen_model.dart';

part 'onboard_viewmodel.g.dart';

class OnboardViewModel = _OnboardViewModelBase with _$OnboardViewModel;

abstract class _OnboardViewModelBase with Store {
  // * Bu değişken Sayfa değiştikçe indicatorunda customize olmasını sağlar, sürekli olarak pageView builder onChange methodu ile değiştirilir.
  @observable
  int currentIndex = 0;
  // * Pageview da gösterilecek liste
  @observable
  List<OnboardScreenModel> onboardPageBuilderList = [
    OnboardScreenModel(
        title: "onboard.title_1",
        description: "onboard.description_1",
        imageName: "onboard_image_1"),
    OnboardScreenModel(
        title: "onboard.title_2",
        description: "onboard.description_2",
        imageName: "onboard_image_2"),
    OnboardScreenModel(
        title: "onboard.title_3",
        description: "onboard.description_3",
        imageName: "onboard_image_3"),
  ];
}
