import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:tasarim_proje/core/base/base_view_model.dart';
import 'package:tasarim_proje/core/device/constants.dart';
part 'splash_view_model.g.dart';

class SplashViewModel = _SplashViewModelBase with _$SplashViewModel;

abstract class _SplashViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() {
    Future.delayed(const Duration(seconds: 3), () async {
      if (localeManager.getBoolValue(PreferencesKeys.IS_FIRST_APP) == false) {
        navigation.navigateToPageClear(path: NavigationConstants.ONBOARD);
      } else {
        navigation.navigateToPageClear(path: NavigationConstants.TEST);
      }
    });
  }
}