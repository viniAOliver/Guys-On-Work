import 'package:get/get.dart';

class AnimationsPageModel {
  RxString? _inRevealAnimation;
  RxString? _onTapAnimation;
  String? _title;
  String? _subtitle;
  AnimationsPageModel({
    RxString? inRevealAnimation,
    RxString? onTapAnimation,
    String? title,
    String? subtitle,
  }) {
    _inRevealAnimation = inRevealAnimation;
    _onTapAnimation = onTapAnimation;
    _title = title;
    _subtitle = subtitle;
  }

  // InRevealAnimation methods get and set
  RxString get inRevealAnimation => _inRevealAnimation ?? ''.obs;
  set inRevealAnimation(RxString? value) {
    _inRevealAnimation = value ?? ''.obs;
  }

  // OnTapAnimation methods get and set
  RxString get onTapAnimation => _onTapAnimation ?? ''.obs;
  set onTapAnimation(RxString? value) {
    _onTapAnimation = value ?? ''.obs;
  }

  // Title methods get and set
  String get title => _title ?? '';
  set title(String? value) {
    _title = value ?? '';
  }

  // Subtitle methods get and set
  String get subtitle => _subtitle ?? '';
  set subtitle(String? value) {
    _subtitle = value ?? '';
  }
}
