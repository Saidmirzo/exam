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
  String get premium => "$basePath/premium.svg";

  String get settings => "$basePath/settings.svg";

  String get another => "$basePath/anothers_ic.svg";

  String get car => "$basePath/car_ic.svg";

  String get exam => "$basePath/exam.svg";

  String get example => "$basePath/example.svg";

  String get reyting => "$basePath/reyting_ic.svg";

  String get stop => "$basePath/stop_ic.svg";
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

  String get avatar1 => '$basePath/avatar1.png';
}
