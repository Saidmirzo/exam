abstract class Assets {
  const Assets._();

  // ignore: library_private_types_in_public_api
  static _Icons get icons => const _Icons();

  // ignore: library_private_types_in_public_api
  static _Images get images => const _Images();
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class _Icons extends _AssetsHolder {
  const _Icons() : super('assets/icons');

  // String get logo => "$basePath/logo.svg";
  //! home page
  String get premium => "$basePath/premium.svg";

  String get settings => "$basePath/settings.svg";

  String get another => "$basePath/anothers_ic.svg";

  String get car => "$basePath/car_ic.svg";

  String get exam => "$basePath/exam.svg";

  String get example => "$basePath/example.svg";

  String get reyting => "$basePath/reyting_ic.svg";

  String get stop => "$basePath/stop_ic.svg";

  String get arrowLeft => "$basePath/arrow_left.svg";

  //! categories page

  String get way => "$basePath/way_ic.svg";

  String get heart => "$basePath/heart_ic.svg";

  String get engine => "$basePath/engine_ic.svg";

  //!others page

  String get bell => "$basePath/bell_ic.svg";

  String get fine => "$basePath/fine_ic.svg";

  String get route => "$basePath/route_ic.svg";

  String get statistics => "$basePath/statistics_ic.svg";

  String get telegram => "$basePath/telegram_ic.svg";
  //!

  String get time => "$basePath/time_ic.svg";

  String get arrowDown => "$basePath/arrow_down_ic.svg";

  String get doubleTick => "$basePath/double_tick_ic.svg";

  String get eye => "$basePath/eye_ic.svg";

  //! sign sign page

  String get bumpySign => "$basePath/bumpy_road_sign.svg";

  String get stopSign => "$basePath/stop_sign.svg";

  String get noEntrySign => "$basePath/no_entry_sign.svg";

  String get maxSpeedSign => "$basePath/max_speed_sign.svg";

  String get infoSign => "$basePath/info_sign.svg";

  String get airplaneSign => "$basePath/airplane_sign.svg";

  String get cameraSign => "$basePath/camera_sign.svg";
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

  String get avatar1 => '$basePath/avatar1.png';

  String get testPic => '$basePath/test_pic.svg';

  String get news => '$basePath/news_img.png';

  //!images sign

  String get sign1 => '$basePath/sign1.png';

  String get sign2 => '$basePath/sign2.png';

  String get sign3 => '$basePath/sign3.png';

  String get sign4 => '$basePath/sign4.png';

  String get sign5 => '$basePath/sign5.png';

  String get sign6 => '$basePath/sign6.png';

  //!
  String get appLogo => '$basePath/app_logo.svg';

  String get avtomentorText => '$basePath/avtomentor_text.svg';
}
