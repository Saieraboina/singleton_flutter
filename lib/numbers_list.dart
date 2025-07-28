class NumbersList {
  List<int> numbers = [1, 2, 3, 4, 5];
  NumbersList._internal();
  static final NumbersList _instance = NumbersList._internal();

  factory NumbersList() {
    return _instance;
  }
}