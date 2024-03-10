class AppStrings {
  static AppStrings? _instace;
  static AppStrings get instance {
    if (_instace != null) return _instace!;
    _instace = AppStrings._init();
    return _instace!;
  }

  AppStrings._init();

  final String cardTitle = 'Card';
}
