import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shortly_flutter/app/screens/onboard/model/onboard_screen_model.dart';
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
        image: Icons.brush),
    OnboardScreenModel(
        title: "onboard.title_2",
        description: "onboard.description_2",
        image: Icons.brush),
    OnboardScreenModel(
        title: "onboard.title_3",
        description: "onboard.description_3",
        image: Icons.brush),
  ];
}
