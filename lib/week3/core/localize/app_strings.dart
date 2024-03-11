class AppStrings {
  static AppStrings? _instace;
  static AppStrings get instance {
    if (_instace != null) return _instace!;
    _instace = AppStrings._init();
    return _instace!;
  }

  AppStrings._init();

  final String cardTitle = 'Card';

  final String checkOut = 'CheckOut';

  final String subTotal = 'Sub-total';

  final String delivery = 'Delivery';
  final String total = 'Total';
}
