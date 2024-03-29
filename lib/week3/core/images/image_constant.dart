class ImageConstants {
  static ImageConstants? _instace;
  static ImageConstants? get instance {
    if (_instace != null) return _instace!;
    _instace = ImageConstants._init();
    return _instace!;
  }

  ImageConstants._init();

  final broccoli = 'broccoli'.toPng;
  final kale = 'kale'.toPng;
  final pepper = 'pepper'.toPng;
  final strawBerry = 'strawberry'.toPng;
}

extension _ImageExtension on String {
  String get toPng => 'assets/images/$this.png';
}
