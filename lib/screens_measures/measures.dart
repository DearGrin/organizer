import 'package:flutter/material.dart';

extension CalculatedMeasures on BuildContext {
  double get _largeScreenWidth => 1080;
  double get _standardScreenWidth => 320;

  double _chooseByScreenWidth(double forLarge, double forSmall) {
    if (MediaQuery.of(this).size.width >= _largeScreenWidth) {
      return forLarge;
    }
    return forSmall;
  }

  bool _chooseBySmallScreenWidth() {
    if (MediaQuery.of(this).size.width > _standardScreenWidth) {
      return false;
    }
    return true;
  }

  double _chooseByCardWidth() {
    if (MediaQuery.of(this).size.width >= _largeScreenWidth) {
      return (MediaQuery.of(this).size.width - 12) / 2 - pagePadding;
    }
    return (MediaQuery.of(this).size.width - 9) / 2 - pagePadding;
  }

  double _chooseBySetCardWidth() {
    if (MediaQuery.of(this).size.width >= _largeScreenWidth) {
      return MediaQuery.of(this).size.width - 40;
    }
    return MediaQuery.of(this).size.width - 32;
  }

  double get pagePadding => _chooseByScreenWidth(20, 16);

  double get nevigationPageHeight => _chooseByScreenWidth(40, 16);

  double get navigationPagePadding => _chooseByScreenWidth(80, 66);

  double get wideButtonPadding => _chooseByScreenWidth(1100, 66);

  double get gridViewSpacing => _chooseByScreenWidth(12, 9);

  double get buttonPadding => _chooseByScreenWidth(15, 36);

  bool get itsSmallScreen => _chooseBySmallScreenWidth();

  double get widthCard => _chooseByCardWidth();

  double get widthSetCard => _chooseBySetCardWidth();

  double get textFieldsPadding => _chooseByScreenWidth(16.5, 36);
}
